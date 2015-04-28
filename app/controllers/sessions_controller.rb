class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: 'Logged in!'
    else
      flash.alert = 'Invalid email/password combination. Please try again.'
      render :new
    end
  end

  def register
    user = User.find_by(email: params[:email])
    if user
      flash.alert = "That email is already in use. Please try again."
    elsif :password != :confirm_password
      flash.alert = "The passwords do not match. Please try again."
    else
      #add to table
      redirect_to root_url, notice: 'Logged in!'
    end
  end

  def destroy
  session[:user_id] = nil
  redirect_to root_url, notice: 'Successfully signed out!'
  end
end
