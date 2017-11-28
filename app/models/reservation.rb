class Reservation < ApplicationRecord
  belongs_to :guest, class_name: "User", foreign_key: "guest_id", dependent: :destroy
  belongs_to :kitchen, dependent: :destroy
  has_many :kitchen_pictures, through: :kitchen
end
