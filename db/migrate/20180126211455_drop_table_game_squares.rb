class DropTableGameSquares < ActiveRecord::Migration[5.1]
  def change
    drop_table :game_squares
  end
end
