class CreateGameSquares < ActiveRecord::Migration[5.1]
  def change
    create_table :game_squares do |t|
      t.references :game, foreign_key: true
      t.integer :cell_index
      t.string :value

      t.timestamps
    end
  end
end
