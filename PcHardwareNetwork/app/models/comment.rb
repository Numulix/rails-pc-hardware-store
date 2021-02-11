class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :build

    validates :description, presence: true, length: { maximum: 512 }
end
