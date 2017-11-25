class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :city, :bio, :created_at

  has_many :reservations
  has_many :reviews
end
