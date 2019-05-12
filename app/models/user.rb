class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, uniqueness: true
    validates :password, :username, presence: true
    has_and_belongs_to_many :book, trough: :books_users
    has_and_belongs_to_many :magazine, trough: :magazine_users
end
