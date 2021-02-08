class Motherboard < ApplicationRecord
    validates :brand, presence: true
    validates :name, presence: true
    validates :socket, presence: true
    validates :form_factor, presence: true
    validates :memory_max, presence: true, numericality: { only_integer: true, greater_than: 0 }
    validates :memory_slots, presence: true, numericality: { only_integer: true, greater_than: 0 }
    validates :color, presence: true
    validates :price, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
