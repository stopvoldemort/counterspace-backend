class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :date, :guest_number

  belongs_to :kitchen
end
