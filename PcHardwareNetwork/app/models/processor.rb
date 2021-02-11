class Processor < ApplicationRecord
    validates :brand, presence: true
    validates :name, presence: true
    validates :core_count, presence: true, numericality: { only_integer: true, greater_than: 0 }
    validates :core_clock, presence: true, numericality: { greater_than: 0 }
    validates :boost_clock, presence: true, numericality: { greater_than: 0 }
    validates :tdp, presence: true, numericality: { greater_than: 0 }
    validates :integrated_graphics, presence: true
    validates :smt, presence: true
    validates :price, presence: true, numericality: { only_integer: true, greater_than: 0 }

    has_one :build, dependent: :destroy
end
