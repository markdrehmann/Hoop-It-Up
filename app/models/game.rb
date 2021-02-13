class Game < ApplicationRecord
  belongs_to :court
  belongs_to :roster
  validates :court_id, presence: true
  validates :roster_id, presence: true
  validates :time, presence: true

  def gametime
    time.to_formatted_s(:gametime)
  end
end
