class CreateRosters < ActiveRecord::Migration[6.1]
  def change
    create_table :rosters do |t|
      t.string :name

      t.timestamps
    end
  end
end
