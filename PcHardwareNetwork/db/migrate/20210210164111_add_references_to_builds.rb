class AddReferencesToBuilds < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :builds, :pc_cases
    remove_column :builds, :processor_cooler_id
    add_reference :builds, :processor_cooler, foreign_key: true
    add_reference :builds, :video_card, foreign_key: true
    add_reference :builds, :memory, foreign_key: true
    add_reference :builds, :storage, foreign_key: true
    add_reference :builds, :motherboard, foreign_key: true
    add_reference :builds, :power_supply, foreign_key: true
  end
end
