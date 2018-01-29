class CreateWords < ActiveRecord::Migration[5.1]
  def change
    create_table :words do |t|
      t.integer :game_id
      t.integer :player_id
      t.string :word

      t.timestamps
    end
  end
end
