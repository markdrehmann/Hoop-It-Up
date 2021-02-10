class Court < ApplicationRecord
    has_many :games
    has_many :rosters, through: :games
end
