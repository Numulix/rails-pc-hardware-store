class CreatePowerSupplies < ActiveRecord::Migration[6.1]
  def change
    create_table :power_supplies do |t|
      t.string :brand
      t.string :name
      t.string :form_factor
      t.string :efficiency_rating
      t.integer :wattage
      t.string :modular
      t.string :color
      t.integer :price

      t.timestamps
    end
  end
end