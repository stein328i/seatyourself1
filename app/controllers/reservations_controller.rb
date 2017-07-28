class ReservationsController < ApplicationController

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new
    @reservation.party_size = params[:reservation][:party_size]
    @reservation.date = params[:reservation][:date]
    @reservation.time = params[:reservation][:time]
    @reservation.restaurant_id = params[:reservation][:restaurant_id ]
    @reservation.user_id = current_user.id

    if @reservation.save
      # flash[:notice] = 'It\'ve sucessfully booked'
      redirect_to root_url
    else
      flash.now[:error] = 'Sorry, try again!'
      redirect_to root_url
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to new_reservations_path
  end


end
