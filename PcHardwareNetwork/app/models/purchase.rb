class Purchase < ApplicationRecord
    belongs_to :user
    belongs_to :build
    validates :purchased_price, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
