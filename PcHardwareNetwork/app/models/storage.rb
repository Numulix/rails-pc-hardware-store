class Storage < ApplicationRecord
    validates :brand, presence: true
    validates :name, presence: true
    validates :capacity, presence: true, numericality: { only_integer: true, greater_than: 0 }
    validates :type, presence: true
    validates :cache, presence: true, numericality: { only_integer: true, greater_than: 0 }
    validates :form_factor, presence: true
    validates :interface, presence: true
    validates :price, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
