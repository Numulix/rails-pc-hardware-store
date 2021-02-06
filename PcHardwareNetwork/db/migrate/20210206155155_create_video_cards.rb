class CreateVideoCards < ActiveRecord::Migration[6.1]
  def change
    create_table :video_cards do |t|
      t.string :brand
      t.string :name
      t.string :chipset
      t.integer :memory
      t.integer :core_clock
      t.integer :boost_clock
      t.string :color
      t.integer :length
      t.integer :price

      t.timestamps
    end
  end
end
