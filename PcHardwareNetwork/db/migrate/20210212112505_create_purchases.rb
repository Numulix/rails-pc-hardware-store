class CreatePurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :purchases do |t|
      t.belongs_to :user
      t.belongs_to :build
      t.integer :purchased_price

      t.timestamps
    end
  end
end