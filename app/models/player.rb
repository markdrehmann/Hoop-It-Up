class Player < ApplicationRecord
    has_secure_password
    has_many :player_rosters
    has_many :rosters, through: :player_rosters
    validates :email, uniqueness: true, presence: true
    validates :password, presence: true
    validates :name, presence: true

    def games # THIS IS BROKEN, ONLY SHOWS FIRST GAME...
        g = []
        self.rosters.each do |r|
            r.games.each do |game|
                g << game
            end
        end
        g
    end
end
