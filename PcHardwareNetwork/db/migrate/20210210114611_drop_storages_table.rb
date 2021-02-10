class DropStoragesTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :storages
  end
end
