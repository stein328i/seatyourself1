class ReservationsController < ApplicationController
  def index
    @reservations = current_user.reservations
    
  end

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
      redirect_to reservations_path
    else
      flash.now[:error] = 'Sorry, try again!'
      @restaurant = @reservation.restaurant
      render 'restaurants/show'
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to reservations_path
  end

  def show
    @reservation = Reservation.find(params[:id])
    # @reservation.user_id = current_user.id
    # @reservation = Reservation.find(params[:user_id])
  end


end
