class AddGameOvertoGames < ActiveRecord::Migration[5.1]
  def change
    add_column(:games,:game_over,:boolean, null: false, default: false)
  end
end
