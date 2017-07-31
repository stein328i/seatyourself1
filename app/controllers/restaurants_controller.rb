class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all

  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reservation = Reservation.new
    # @reservation.date = Reservation.reservation_date

  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.user_id = current_user.id

    if @restaurant.save
      redirect_to restaurants_path
    else
      render :new
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end
  def update
    @restaurant.assign_attributes(restaurant_params)

    if @restaurant.save
      redirect_to restaurant_path
    else
      render :edit
    end
  end


  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :price_range, :menu, :url, :summary, :opening_time, :closing_time, :party_size)
  end
end
