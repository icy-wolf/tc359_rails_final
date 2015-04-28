class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find_by(email: user_params[:email])
    if user && user.authenticate(user_params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: 'Logged in!'
    else
      flash.alert = 'Invalid email/password combination. Please try again.'
      @user = User.new
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Successfully signed out!'
  end

  private
    def user_params
      params.require(:user).permit(:email, :password)
    end
end
