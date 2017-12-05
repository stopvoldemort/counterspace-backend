class Message < ApplicationRecord
  belongs_to :sender, class_name: "User", foreign_key: "sender_id"
  belongs_to :recipient, class_name: "User", foreign_key: "recipient_id"
  belongs_to :reservation

  after_create :set_milliseconds

  def set_milliseconds
    self.milliseconds = self.created_at.to_f * 1000
    self.save
  end

end
