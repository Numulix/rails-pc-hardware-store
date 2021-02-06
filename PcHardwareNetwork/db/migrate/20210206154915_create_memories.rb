class CreateMemories < ActiveRecord::Migration[6.1]
  def change
    create_table :memories do |t|
      t.string :brand
      t.string :name
      t.string :speed
      t.integer :size
      t.string :color
      t.integer :cas_latency
      t.integer :price

      t.timestamps
    end
  end
end
