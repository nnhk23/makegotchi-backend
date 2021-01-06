class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :money, :plays_left
  has_many :user_pets
  has_many :pets, through: :user_pets
end
