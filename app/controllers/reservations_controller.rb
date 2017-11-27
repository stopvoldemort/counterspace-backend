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
    @reservations = User.find(params[:userid]).reservations
    render json: @reservations
  end

  private

  def reservation_params
    params.require(:reservation).permit(:guest_id, :kitchen_id, :guest_number, :date)
  end


end
