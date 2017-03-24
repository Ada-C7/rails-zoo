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

  def create
       reservation = Reservation.new(reservation_params)
       if reservation.save
            redirect_to reservations_path
       end
  end

  private

  def reservation_params
      params.required(:reservation).permit(:first_guest_first_name, :first_guest_last_name, :second_guest_first_name, :second_guest_last_name,:email, :phone, :message, :diet, :status)
  end

 end
