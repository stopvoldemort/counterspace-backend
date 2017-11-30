class KitchenReview < ApplicationRecord
  belongs_to :kitchen, dependent: :destroy
  belongs_to :guest, class_name: "User", foreign_key: "guest_id"
end
