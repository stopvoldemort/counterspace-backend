class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :city, :bio

  has_many :reservations
  has_many :reviews
end
