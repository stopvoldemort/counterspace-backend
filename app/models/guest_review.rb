class GuestReview < ApplicationRecord
  belongs_to :host, class_name: "User", foreign_key: "host_id", dependent: :destroy
  belongs_to :guest, class_name: "User", foreign_key: "guest_id", dependent: :destroy

end
