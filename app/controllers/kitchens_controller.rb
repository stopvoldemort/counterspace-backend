class KitchensController < ApplicationController

  def cities
    @cities = Kitchen.select(:city).distinct.map {|c| c.city}
    render json: @cities
  end

  def index
    city = params[:query].split(" ").map{|w| w.capitalize}.join(" ")
    @kitchens = Kitchen.where(city: city)
    render json: @kitchens
  end

  def show
    find_kitchen
    render json: @kitchen
  end

  def create
    @kitchen = Kitchen.create(kitchen_params)
    params[:kitchen][:kitchen_pictures].each do |pic|
      KitchenPicture.create({url: pic[:url], kitchen_id: @kitchen.id})
    end
    render json: @kitchen
  end

  def edit
    find_kitchen
    render json: @kitchen
  end

  def update
    find_kitchen
    @kitchen.update(kitchen_params)
    render json: @kitchen
  end

  def destroy
    find_kitchen
    @kitchen.destroy
  end

  private

  def kitchen_params
    params.require(:kitchen).permit(
      [
        :title,
        :street_address,
        :city,
        :state,
        :zipcode,
        :latitude,
        :longitude,
        :description,
        :size,
        :max_guests,
        :base_price,
        :price_per_guest,
        :knives,
        :pots,
        :pans,
        :food_processor,
        :standing_mixer,
        :deep_fryer,
        :pressure_cooker,
        :owner_id,
        :kitchen_pictures,
        :blurb
      ]
    )
  end

  def find_kitchen
    @kitchen = Kitchen.find(params[:id])
  end

end
