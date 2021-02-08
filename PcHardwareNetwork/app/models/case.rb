class Case < ApplicationRecord
    validates :brand, presence: true
    validates :name, presence: true
    validates :type, presence: true
    validates :color, presence: true
    validates :power_supply, presence: true
    validates :side_panel_window, presence: true
    validates :external_bays, presence: true, numericality: { only_integer: true, greater_than_or_equal: 0 }
    validates :internal_bays, presence: true, numericality: { only_integer: true, greater_than_or_equal: 0 }
    validates :price, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
