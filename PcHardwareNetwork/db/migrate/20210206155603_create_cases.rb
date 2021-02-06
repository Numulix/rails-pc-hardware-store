class CreateCases < ActiveRecord::Migration[6.1]
  def change
    create_table :cases do |t|
      t.string :brand
      t.string :name
      t.string :type
      t.string :color
      t.string :power_supply
      t.string :side_panel_window
      t.integer :external_bays
      t.integer :internal_bays
      t.integer :price

      t.timestamps
    end
  end
end
