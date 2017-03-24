class ReservationsController < ApplicationController
  def index
       @reservations = Reservation.all
  end

  def show
       @reservation = Reservation.find(params[:id])
  end

  def new
       @reservation = Reservation.new
  end
 
end
