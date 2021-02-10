class Roster < ApplicationRecord
  has_many :player_rosters
  has_many :players, through: :player_rosters

  has_many :games
  has_many :courts, through: :games

end
