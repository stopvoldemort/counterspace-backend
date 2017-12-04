class KitchensController < ApplicationController

  skip_before_action :authorized, only: [:cities, :index, :show]


  def cities
    @cities = Kitchen.select(:city).distinct.map {|c| c.city}
    render json: @cities
  end

  def index
    lng = params[:longitude].to_f
    lat = params[:latitude].to_f
    kitchens = Kitchen.all.select { |k| ((k.longitude - lng).abs < 2) && ((k.latitude - lat).abs < 2) }
    response = {}
    if !kitchens.empty?
      response[:kitchens] = kitchens
      response[:kitchen_pictures] = kitchens.map {|k| k.kitchen_pictures[0]}
      response[:kitchen_reviews] = kitchens.map {|k| k.reviews}.flatten
    else
      response[:kitchens] = []
      response[:kitchen_pictures] = []
      response[:kitchen_reviews] = []
    end
    render json: response
  end

  def show
    selected_kitchen = Kitchen.find(params[:id])
    response = selected_kitchen.show_hash
    render json: response
  end

  def create
    selected_kitchen = Kitchen.create(kitchen_params)
    params[:kitchen][:kitchen_pictures].each do |pic|
      KitchenPicture.create({url: pic[:url], kitchen_id: selected_kitchen.id})
    end
    response = selected_kitchen.show_hash
    render json: response
  end

  def update
    find_kitchen
    @kitchen.update(kitchen_params)
    response = @kitchen.show_hash
    render json: response
  end

  def destroy
    Kitchen.find(params[:kitchenid]).destroy
    render json: true
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
