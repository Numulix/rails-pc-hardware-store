class RemoveTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :cases
  end
end
