class AddReferencesToBuilds < ActiveRecord::Migration[6.1]
  def change
    add_reference :builds, :processor, foreign_key: true
    add_reference :builds, :pc_case, foreign_key: true
    add_reference :builds, :processor_cooler, foreign_key: true
    add_reference :builds, :video_card, foreign_key: true
    add_reference :builds, :memory, foreign_key: true
    add_reference :builds, :storage, foreign_key: true
    add_reference :builds, :motherboard, foreign_key: true
    add_reference :builds, :power_supply, foreign_key: true
  end
end