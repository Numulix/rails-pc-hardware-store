class CreateProcessors < ActiveRecord::Migration[6.1]
  def change
    create_table :processors do |t|
      t.string :brand
      t.string :name
      t.integer :core_count
      t.float :core_clock
      t.float :boost_clock
      t.integer :tdp
      t.string :integrated_graphics
      t.string :smt
      t.integer :price

      t.timestamps
    end
  end
end
