class Game < ApplicationRecord
  belongs_to :court
  belongs_to :roster
  validates :court_id, presence: true
  validates :roster_id, presence: true
  validates :time, presence: true

  def gametime
    time.to_formatted_s(:gametime)
  end

  def self.games_in_order # This may be unnecessary
    games = Game.all
    games.sort_by(&:time)
  end

  def self.upcoming
    games = Game.all.where("time > ?", DateTime.now).sort_by(&:time)
  end

  def self.past
    games = Game.all.where("time < ?", DateTime.now).sort_by(&:time)
  end
end
