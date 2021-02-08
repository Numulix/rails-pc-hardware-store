class VideoCard < ApplicationRecord
    validates :brand, presence: true
    validates :name, presence: true
    validates :chipset, presence: true
    validates :memory, presence: true, numericality: { only_integer: true, greater_than: 0 }
    validates :core_clock, presence: true, numericality: { only_integer: true, greater_than: 0 }
    validates :boost_clock, presence: true, numericality: { only_integer: true, greater_than: 0 }
    validates :color, presence: true
    validates :length, presence: true, numericality: { only_integer: true, greater_than: 0 }
    validates :price, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
