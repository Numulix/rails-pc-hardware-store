class AddFksToBuilds < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :builds, :processor_coolers
    add_foreign_key :builds, :video_cards
    add_foreign_key :builds, :memories
    add_foreign_key :builds, :pc_cases
    add_foreign_key :builds, :storages
    add_foreign_key :builds, :power_supplies
    add_foreign_key :builds, :motherboards
  end
end
