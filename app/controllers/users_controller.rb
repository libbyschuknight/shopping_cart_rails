class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    # take user email and password
    # find user
    # show user? on index.html.erb ? on products page?
  end



end
