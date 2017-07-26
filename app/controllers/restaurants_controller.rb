class RestaurantsController < ApplicationController
  def show
    @restaurant = Restaurant.new
  end
end
