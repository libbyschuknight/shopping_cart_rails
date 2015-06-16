class OrdersController < SecureController

  before_filter :find_order, only: [:destroy, :show]

  def index
    @orders = Order.all
    @user = current_user
  end

  def create
    @order = current_user.orders.create(product_id: params[:product_id])
    redirect_to @order
  end

  def show; end   # to have on one line, could not have at all, would still work

  def destroy
    @order.destroy
    redirect_to orders_path
  end

  def destroy_all
    user = User.find(current_user.id)
    user.orders.clear
    redirect_to orders_path
  end

  private

  def find_order
    @order = current_user.orders.find(params[:id])
  end

  # def order_params
  #   params.require(:order).permit(:product_id)
  # end


end
