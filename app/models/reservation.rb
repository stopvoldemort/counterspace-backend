class Reservation < ApplicationRecord
  belongs_to :guest, class_name: "User", foreign_key: "guest_id"
  belongs_to :kitchen
  has_many :kitchen_pictures, through: :kitchen
  has_many :messages, dependent: :destroy

  after_create :set_milliseconds

  def set_milliseconds
    self.milliseconds = self.created_at.to_f * 1000
    self.save
  end
end
