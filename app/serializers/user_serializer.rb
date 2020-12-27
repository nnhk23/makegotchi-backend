class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username
  has_many :user_pets
  has_many :pets, through: :user_pets
end
