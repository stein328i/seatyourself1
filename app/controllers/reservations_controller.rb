class ReservationsController < ApplicationController

  def new
    @reservation = Reservation.new
  end


  def create
    @reservation = Reservation.new
    @reservation.name = params[:reservation][:name]
    @reservation.party_size = params[:reservation][:party_size]
    @reservation.date = params[:reservation][:date]
    @reservation.time = params[:reservation][:time]

    if @reservation.save
      flash[:notice] = 'It\'ve sucessfully booked'
      redirect_to root_url
    else
      flash.now[:error] = 'Sorry, try again!'
      redirect_to reservation_path
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to new_reservations_path
  end


end
