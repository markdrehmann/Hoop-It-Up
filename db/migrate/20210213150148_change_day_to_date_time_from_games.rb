class ChangeDayToDateTimeFromGames < ActiveRecord::Migration[6.1]
  def change
    change_column :games, :time, :datetime
  end
end
