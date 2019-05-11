class Book < ApplicationRecord
  has_and_belongs_to_many :users
  belongs_to :author
  has_one_attached :image
end
