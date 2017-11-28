class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :city, :bio, :pic_url, :created_at

  has_many :reservations
  has_many :reviews
  has_many :owners
end
