class RestaurantsController < ApplicationController

  def index
    @resources = Restaurant.new
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end
  
end
