class OrdersController < ApplicationController

  def index
    @orders = Order.where(user: current_user)
  end

  def new
    @order = Order.new
    @product = Product.where(params[:product_id])
    @transporter = Transporter.where(params[:transporter_id])
  end

  def key(product)
    key1 = []
    key0 = [product.id]
    3.times do
      key1 << ("A".."Z").to_a.sample
    end
    2.times do
      key1 << rand(0..9)
    end
    key1.shuffle
    unique_key = key0 << key1
    unique_key.shuffle
  end

  def create
    order = Order.new(order_params)

    order.user = current_user
    @product = Product.where(params[:product_id])
    order.product = @product
    order.uniquekey = key(@product)
    @transporter = Transporter.where(params[:transporter_id])
    if order.save
      redirect_to orders_path
    else
      render :new
    end
  end

  private

  def orders_params
    params.require(:order).permit( :checkin, :checkout, :aa, :ad)

  end
end
