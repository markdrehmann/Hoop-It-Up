class Game < ApplicationRecord
  belongs_to :court
  belongs_to :roster
  validates :court_id, presence: true
  validates :roster_id, presence: true
  validates :time, presence: true
  scope :upcoming, -> { where("time > ?", Time.current).order(:time) }
  scope :past, -> { where("time < ?", Time.current).order(:time) }

  def gametime
    time.to_formatted_s(:gametime)
  end

  def self.court_with_most_games
    group(:court).count.max_by{|k,v| v}.first
  end

end
