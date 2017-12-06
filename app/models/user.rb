class User < ApplicationRecord
  has_secure_password
  has_many :reservations, foreign_key: "guest_id", dependent: :destroy
  has_many :kitchens, foreign_key: "owner_id"
  has_many :kitchen_pictures, through: :kitchens
  has_many :reviewed_kitchens, class_name: "KitchenReview", foreign_key: "guest_id", dependent: :destroy
  has_many :owners, through: :kitchens
  has_many :sent_messages, class_name: "Message", foreign_key: "sender_id"
  has_many :received_messages, class_name: "Message", foreign_key: "recipient_id"

  def session_hash
    response = {}
    response[:user] = self
    response[:reservations] = self.reservations
    response[:kitchens] = self.kitchens
    response[:kitchen_reviews] = self.reviewed_kitchens
    response[:kitchen_pictures] = self.kitchens.map {|k| k.kitchen_pictures[0]}
    response[:kitchen_reservations] = self.kitchens.map {|k| k.reservations}.flatten
    response[:reviews_of_users_kitchens] = self.kitchens.map {|k| k.reviews}.flatten
    response[:received_messages] = self.received_messages
    response[:sent_messages] = self.sent_messages
    response[:reservations_kitchens] = self.reservations.map{|r| r.kitchen}.uniq
    response[:reservations_kitchens_pictures] = self.reservations.map{|r| r.kitchen}.uniq.map{|k| k.kitchen_pictures[0]}
    response
  end



  def unread_messages
    self.received_messages.select{|m| !m.read}
  end

  def read_messages
    self.received_messages.select{|m| m.read}
  end

end
