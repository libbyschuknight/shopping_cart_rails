class SessionsController < ApplicationController

  def create
    @user = User.find_by(email: user_params[:email], password: user_params[:password])
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
