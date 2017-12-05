class Reservation < ApplicationRecord
  belongs_to :guest, class_name: "User", foreign_key: "guest_id"
  belongs_to :kitchen
  has_many :kitchen_pictures, through: :kitchen
  has_many :messages
end
