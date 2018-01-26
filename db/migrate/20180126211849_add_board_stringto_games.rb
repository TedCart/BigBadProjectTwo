class AddBoardStringtoGames < ActiveRecord::Migration[5.1]
  def change
    add_column(:games,:board_string,:string,null:false,default: "")
  end
end
