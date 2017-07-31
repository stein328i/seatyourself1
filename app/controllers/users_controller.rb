class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new

    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]
    @user.account_type = params[:user][:account_type]
    # puts "log in !!  "
    # puts params[:user][:password]
    # puts params[:user][:password_confirmation]

    if @user.save
      flash[:notice] = 'Account successfully created!'
      redirect_to root_url
    else
      flash.now[:error] = 'Sorry, try again!'
      render new_users_path
    end

  end
  def show
    @user = current_user
    @restaurants = @user.restaurants
    # @restaurant = Restaurant.find(params[:id])
  end
  def destroy
    @user = current_user
    @restaurants = @user.restaurants
    @restaurants.destroy
    redirect_to users_path
  end
end
# @reservation = Reservation.find(params[:id])
# @reservation.destroy
# redirect_to reservations_path
