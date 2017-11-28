class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :date, :guest_number

  belongs_to :kitchen
  has_many :kitchen_pictures
end
