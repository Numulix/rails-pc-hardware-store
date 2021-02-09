class CreateBuilds < ActiveRecord::Migration[6.1]
  def change
    create_table :builds do |t|
      t.string :name
      t.integer :user_id
      t.integer :processor_id
      t.integer :processor_cooler_id
      t.integer :video_card_id
      t.integer :memory_id
      t.integer :motherboard_id
      t.integer :power_supply_id
      t.integer :storage_id
      t.integer :case_id

      t.timestamps
    end
  end
end
