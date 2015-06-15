class SessionsController < ApplicationController

  def create
    @user = User.find_by(user_params)
    if @user
      session[:user_id] = @user.id
    else
      flash[:error] = 'Incorrect credientials'
    end
    redirect_to products_path
  end

  def destroy
    session.clear
    redirect_to products_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end



end
