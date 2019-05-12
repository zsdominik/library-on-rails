class Magazine < ApplicationRecord
    has_and_belongs_to_many :users
    belongs_to :publisher
    has_one_attached :image
    validates :name, presence: true
end
