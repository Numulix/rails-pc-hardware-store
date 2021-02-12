class CreateStorages < ActiveRecord::Migration[6.1]
  def change
    create_table :storages do |t|
      t.string :brand
      t.string :name
      t.integer :capacity
      t.string :storage_type
      t.integer :cache
      t.string :form_factor
      t.string :interface
      t.integer :price

      t.timestamps
    end
  end
end