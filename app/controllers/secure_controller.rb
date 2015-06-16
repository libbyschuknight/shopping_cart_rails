class SecureController < ApplicationController
  before_filter :require_current_user

  def require_current_user
    redirect_to root_url unless current_user
  end

end
