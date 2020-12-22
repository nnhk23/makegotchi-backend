class User < ApplicationRecord
    has_many :user_pets, dependent: :destroy
    has_many :pets, through: :user_pets
end
