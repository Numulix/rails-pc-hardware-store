class AddUserForeignKeyToBuilds < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :builds, :users
  end
end
