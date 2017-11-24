class KitchenSerializer < ActiveModel::Serializer
  attributes :id, :title, :blurb, :street_address, :city, :state, :zipcode, :description, :size, :max_guests, :base_price, :price_per_guest, :knives, :pots, :pans, :food_processor, :standing_mixer, :deep_fryer, :pressure_cooker

  has_many :reservations
  has_many :reviews
end
