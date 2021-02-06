class CreateMotherboards < ActiveRecord::Migration[6.1]
  def change
    create_table :motherboards do |t|
      t.string :brand
      t.string :name
      t.string :socket
      t.string :form_factor
      t.integer :memory_max
      t.integer :memory_slots
      t.string :color
      t.integer :price

      t.timestamps
    end
  end
end
