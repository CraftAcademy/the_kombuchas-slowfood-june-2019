class MenuItem < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true
    validates :price, presence: true
end
