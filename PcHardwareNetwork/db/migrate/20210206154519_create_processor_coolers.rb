class CreateProcessorCoolers < ActiveRecord::Migration[6.1]
  def change
    create_table :processor_coolers do |t|
      t.string :brand
      t.string :name
      t.integer :fan_rpm
      t.integer :noise_level
      t.string :color
      t.integer :radiator_size
      t.integer :price

      t.timestamps
    end
  end
end
