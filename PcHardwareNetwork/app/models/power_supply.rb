class PowerSupply < ApplicationRecord
    validates :brand, presence: true
    validates :name, presence: true
    validates :form_factor, presence: true
    
    validates :wattage, presence: true, numericality: { only_integer: true, greater_than: 0 }
    validates :modular, presence: true
    validates :color, presence: true
    validates :price, presence: true, numericality: { only_integer: true, greater_than: 0 }

    has_one :build, dependent: :destroy
end
