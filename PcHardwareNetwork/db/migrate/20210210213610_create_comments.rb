class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.text :description
      t.belongs_to :user
      t.belongs_to :build

      t.timestamps
    end
  end
end
