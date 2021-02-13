class Player < ApplicationRecord
    has_secure_password
    has_many :player_rosters
    has_many :rosters, through: :player_rosters
    validates :email, uniqueness: true, presence: true
    validates :password, presence: true
    validates :name, presence: true

    def games # THIS IS BROKEN, ONLY SHOWS FIRST GAME...
        self.rosters.map do |r|
            r.games.map do |g|
                g
            end
        end.first
    end
end
