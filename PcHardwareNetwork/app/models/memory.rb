class Memory < ApplicationRecord
    validates :brand, presence: true
    validates :name, presence: true
    validates :speed, presence: true
    validates :size, presence: true, numericality: { only_integer: true, greater_than: 0 }
    validates :color, presence: true
    validates :cas_latency, presence: true, numericality: { only_integer: true, greater_than: 0 }
    validates :price, presence: true, numericality: { only_integer: true, greater_than: 0 }

    has_one :build, dependent: :destroy
end
