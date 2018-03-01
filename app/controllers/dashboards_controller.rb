class DashboardsController < ApplicationController
  skip_after_action :verify_authorized
  def dashboard
    # @orders = current_user.bookings
    @product = current_user.products.map{ |product| product.offers }.flatten
    # @product.sort_by! do |b|
    #   b.status
    # end
    # @product_bookings = current_user.bookings
    @products = current_user.products
  end
  def show

    @product = Product.find(params[:id])
    @offers =  Offer.where(product: @product)
  end

  def validate
    @product = Product.find(params[:product_id])
    @offer = Offer.find(params[:id])

    authorize @offer
    @product.status = 1
    @offer.status = 1
    @product.save
    @offer.save
    redirect_to dashboards_product_path(@product)
  end

  def refused
    @product = Product.find(params[:product_id])
    @offer = Offer.find(params[:id])
    authorize @offer
    @offer.status = 2
    @product.save
    @offer.save
    redirect_to dashboards_product_path(@product)
  end
end
