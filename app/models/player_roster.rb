class PlayerRoster < ApplicationRecord
  belongs_to :player
  belongs_to :roster
end
