class OrdersController < ApplicationController

  def create
    @order = Order.create(order_params)
    redirect_to order_path(order_params)
  end

  def show
    @order = Order.find(params[:id])
  end


  ## ?? not sure if need this?
  private

  def order_params
    params.require(:order).permit(:user_id, :product_id) #maybe missing order date? might need to take out?
  end


end
