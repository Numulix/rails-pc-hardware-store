class Build < ApplicationRecord
end
class Build < ApplicationRecord
    has_one :user
    has_one :processor
    has_one :processor_cooler
    has_one :video_card
    has_one :memory
    has_one :motherboard
    has_one :power_supply
    has_one :storage
    has_one :case
end