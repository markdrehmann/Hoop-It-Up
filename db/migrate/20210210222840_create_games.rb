class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :day
      t.string :time
      t.belongs_to :court, null: false, foreign_key: true
      t.belongs_to :roster, null: false, foreign_key: true

      t.timestamps
    end
  end
end
