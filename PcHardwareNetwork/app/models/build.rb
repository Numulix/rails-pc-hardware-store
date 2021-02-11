class Build < ApplicationRecord
    belongs_to :user
    belongs_to :processor
    belongs_to :processor_cooler
    belongs_to :video_card
    belongs_to :memory
    belongs_to :motherboard
    belongs_to :power_supply
    belongs_to :storage
    belongs_to :pc_case

    has_many :comments
    has_many :users, through: :comments
end