class Game < ApplicationRecord
  belongs_to :court
  belongs_to :roster

  def gametime
    time.to_formatted_s(:gametime)
  end
end
