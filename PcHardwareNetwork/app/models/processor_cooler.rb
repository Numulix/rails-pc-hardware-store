class ProcessorCooler < ApplicationRecord
    validates :brand, presence: true
    validates :name, presence: true
    validates :fan_rpm, presence: true, numericality: { only_integer: true, greater_than: 0 }
    validates :noise_level, presence: true, numericality: { only_integer: true, greater_than: 0 }
    validates :color, presence: true
    validates :radiator_size, presence: true, numericality: { only_integer: true, greater_than: 0 }
    validates :price, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
