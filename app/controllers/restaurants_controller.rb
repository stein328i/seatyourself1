class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all

  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reservation = Reservation.new
    # @reservation.date = Reservation.reservation_date

  end

end
