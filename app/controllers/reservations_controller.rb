class ReservationsController < ApplicationController

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      render json: true
    else
      render json: false
    end
  end

  def index
    user = User.find(params[:userid])
    @reservations = User.find(params[:userid]).reservations
    reservations = {}
    reservations[:list] = user.reservations
    if user.reservations
      reservations[:kitchens] = user.reservations.map {|k| k.kitchen}.uniq{|k| k.id}
      reservations[:kitchen_pictures] = reservations[:kitchens].map{|k| k.kitchen_pictures[0]}
      reservations[:kitchen_reviews] = user.reviewed_kitchens
    else
      reservations[:kitchens] = []
      reservations[:kitchen_pictures] = []
      reservations[:kitchen_reviews] = []
    end
    render json: reservations
  end

  def destroy
    Reservation.destroy(params[:reservationid]).destroy
    render json: true
  end

  private

  def reservation_params
    params.require(:reservation).permit(:guest_id, :kitchen_id, :guest_number, :date)
  end


end
