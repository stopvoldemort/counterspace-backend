class Kitchen < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :messages, through: :reservations
  belongs_to :owner, class_name: "User", foreign_key: "owner_id"
  has_many :guests, through: :reservations
  has_many :reviews, class_name: "KitchenReview", foreign_key: "kitchen_id", dependent: :destroy
  has_many :kitchen_pictures, dependent: :destroy
  accepts_nested_attributes_for :kitchen_pictures

  def show_hash()
    selected_kitchen = self
    response = {}
    if selected_kitchen
      response[:selected_kitchen] = selected_kitchen
      response[:selected_kitchen_reviews] = selected_kitchen.reviews
      response[:selected_kitchen_review_authors] = selected_kitchen.reviews.map { |r| r.guest }
      response[:selected_kitchen_reservations] = selected_kitchen.reservations
      response[:selected_kitchen_pictures] = selected_kitchen.kitchen_pictures
      response[:selected_kitchen_owner] = selected_kitchen.owner
      response[:selected_kitchen_messages] = selected_kitchen.messages
      response[:selected_kitchen_guests] = selected_kitchen.guests.uniq
    else
      response[:selected_kitchen] = []
      response[:selected_kitchen_reviews] = []
      response[:selected_kitchen_review_authors] = []
      response[:selected_kitchen_reservations] = []
      response[:selected_kitchen_pictures] = []
      response[:selected_kitchen_owner] = {}
      response[:selected_kitchen_messages] = []
      response[:selected_kitchen_guests] = []
    end
    response
  end


end
