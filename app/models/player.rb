class Player < ApplicationRecord
  has_secure_password
  has_many :player_rosters
  has_many :rosters, through: :player_rosters
  validates :email, uniqueness: true, presence: true
  validates :password, presence: true
  validates :name, presence: true

  def games
    game_array = []
    self.rosters.each do |r|
      r.games.each do |g|
        game_array << g
      end
    end
    game_array
  end

  def upcoming_games
    games.select { |g| g.time > DateTime.now }.sort_by(&:time)
  end

  def past_games
    games.select { |g| g.time < DateTime.now }.sort_by(&:time)
  end
end
