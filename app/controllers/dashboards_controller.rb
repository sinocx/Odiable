class DashboardsController < ApplicationController
  skip_after_action :verify_authorized
  def dashboard
    # @orders = current_user.bookings
    @products = current_user.products
    if  current_user.transporter
      @transporter = Transporter.find_by(user: current_user.id)
      @offers = @transporter.offers
    else

    end
    # @product.sort_by! do |b|
    #   b.status
    # end
    # @product_bookings = current_user.bookings
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
    other_offer = Offer.where(product: @product )
    other_offer.each do |offer|
      offer.status = 2
      offer.save
    end
    # chercher les autres offres puis status validé
    @product.save
    @offer.save
    respond_to do |format|
        format.html { redirect_to dashboard_path }
        format.js
    end  # <-- will render `app/views/reviews/create.js.erb`
    # redirect_to dashboards_path
  end

  def refused
    @product = Product.find(params[:product_id])
    @offer = Offer.find(params[:id])
    authorize @offer
    @offer.status = 2
    @product.save
    @offer.save
    respond_to do |format|
      format.html { redirect_to dashboard_path }
      format.js
    end
    redirect_to dashboards_path
  end
end
