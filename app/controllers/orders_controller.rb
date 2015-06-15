class OrdersController < ApplicationController


  def index
    @orders = Order.all
    @user = current_user
  end

  def create
    @order = current_user.orders.create(product_id: params[:product_id])
    # redirect_to order_path(id: @order.id)
    redirect_to @order
  end

  def show
    @order = Order.find(params[:id])
  end

  def destroy
    user = User.find(current_user)
    user.orders.delete(params[:id])

    redirect_to orders_path
  end


  private

  # def order_params
  #   params.require(:order).permit(:product_id)
  # end


end
