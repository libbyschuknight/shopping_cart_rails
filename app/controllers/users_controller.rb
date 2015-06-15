class UsersController < ApplicationController

  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to sign_in_path(user_params)
    else
      redirect_to prodcuts_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :address )
  end



end
