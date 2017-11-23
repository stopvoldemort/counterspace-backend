class KitchensController < ApplicationController

  def cities
    @cities = Kitchen.select(:city).distinct.map {|c| c.city}
    render json: @cities
  end

  def index
    @kitchens = Kitchen.where(city: params[:city])
    render json: @kitchens
  end

  def show
    find_kitchen
    render json: @kitchen
  end

  def create
    @kitchen = Kitchen.new(kitchen_params)
    @kitchen.owner_id = session[:user_id]
    if @kitchen.save
      render json: @kitchen
    else
      render json: false
    end
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
    params.require(:kitchen).permit(:title, :street_address, :city, :state, :zipcode, :description, :size, :max_guests, :base_price, :price_per_guest, :knives, :pots, :pans, :food_processor, :standing_mixer, :deep_fryer, :pressure_cooker)
  end

  def find_kitchen
    @kitchen = Kitchen.find(params[:id])
  end

end
