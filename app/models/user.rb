class User < ApplicationRecord
  has_secure_password
  has_many :reservations, foreign_key: "guest_id", dependent: :destroy
  has_many :kitchens, foreign_key: "owner_id"
  has_many :reviews, class_name: "GuestReview", foreign_key: "guest_id", dependent: :destroy
  has_many :reviewed_guests, class_name: "GuestReview", foreign_key: "host_id"
  has_many :reviewed_kitchens, class_name: "KitchenReview", foreign_key: "guest_id", dependent: :destroy
  has_many :owners, through: :kitchens
end
