class Publisher < ApplicationRecord
    has_many :magazine
    validates :name, presence: true
end
