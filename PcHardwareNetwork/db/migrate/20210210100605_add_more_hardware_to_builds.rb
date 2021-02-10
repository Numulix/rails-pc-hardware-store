class AddMoreHardwareToBuilds < ActiveRecord::Migration[6.1]
  def change
    add_reference :builds, :processor_cooler
    add_reference :builds, :video_card
    add_reference :builds, :memory
    add_reference :builds, :storage
    add_reference :builds, :power_supply
    add_reference :builds, :motherboard
    add_reference :builds, :case
  end
end
