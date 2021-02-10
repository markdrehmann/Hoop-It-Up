class Game < ApplicationRecord
  belongs_to :court
  belongs_to :roster
end
