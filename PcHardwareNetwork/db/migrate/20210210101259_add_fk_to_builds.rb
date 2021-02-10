class AddFkToBuilds < ActiveRecord::Migration[6.1]
  def change
    remove_column :builds, :processor_id, :integer
    add_reference :builds, :processor, foreign_key: true
  end
end
