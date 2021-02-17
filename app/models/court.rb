class Court < ApplicationRecord
  has_many :games
  has_many :rosters, through: :games
  validates :name, presence: true
  validates :address, presence: true
end
