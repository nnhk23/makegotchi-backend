class User < ApplicationRecord
    has_many :user_pets, dependent: :destroy
    has_many :pets, through: :user_pets
    has_secure_password
    validates :username, uniqueness: true
    # validates :name, :username, presence: true
end
