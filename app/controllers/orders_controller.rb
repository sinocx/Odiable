class OrdersController < ApplicationController

  def index
    @orders = Order.where(user: current_user)
  end

  def new
    @order = Order.new
    @product = Product.where(params[:product_id])
    @transporter = Transporter.where(params[:transporter_id])
  end

  def create
    order = Order.new(order_params)
    order.user = current_user
    @product = Product.where(params[:product_id])
    order.product = @product
    @transporter = Transporter.where(params[:transporter_id])
    if order.save
      redirect_to orders_path
    else
      render :new
    end
  end
end
