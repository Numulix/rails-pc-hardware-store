class RemoveHardwareFromBuilds < ActiveRecord::Migration[6.1]
  def change
    remove_column :builds, :video_card_id, :integer
    remove_column :builds, :memory_id, :integer
    remove_column :builds, :motherboard_id, :integer
    remove_column :builds, :power_supply_id, :integer
    remove_column :builds, :storage_id, :integer
    remove_column :builds, :case_id, :integer
  end
end
