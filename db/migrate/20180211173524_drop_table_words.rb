class DropTableWords < ActiveRecord::Migration[5.1]
  def change
    drop_table :words
  end
end
