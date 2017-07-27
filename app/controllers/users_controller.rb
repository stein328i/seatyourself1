class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new

    @user.email = params[:user][:email]
    @user.password_digest = params[:user][:password_digest]
    # @user.password_confirmation = params[:user][:password_confirmation]

    if @user.save
      flash[:notice] = 'Account successfully created!'
      redirect_to root_url
    else
      flash.now[:error] = 'Sorry, try again!'
      render :new
    end

  end
end
