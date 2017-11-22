class Kitchen < ApplicationRecord
  has_many :reservations
  has_one :equipment
  belongs_to :owner, class_name: "User", foreign_key: "owner_id", dependent: :destroy
  has_many :guests, through: :reservations
  has_many :reviews, class_name: "KitchenReview", foreign_key: "kitchen_id"
end
