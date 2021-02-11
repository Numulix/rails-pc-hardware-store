class PcCase < ApplicationRecord
    validates :brand, presence: true
    validates :name, presence: true
    validates :color, presence: true
    validates :case_type, presence: true
    validates :power_supply, presence: true
    validates :external_bays, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
    validates :internal_bays, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
    validates :side_panel_window, presence: true
    validates :price, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

    has_one :build, dependent: :destroy
end
