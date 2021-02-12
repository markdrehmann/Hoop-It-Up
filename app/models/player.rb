class Player < ApplicationRecord
    has_secure_password
    has_many :player_rosters
    has_many :rosters, through: :player_rosters
    validates :email, uniqueness: true
    validates :password, presence: true
    validates :name, presence: true
end
