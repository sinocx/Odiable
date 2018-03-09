class DashboardsController < ApplicationController
  skip_after_action :verify_authorized

  def dashboard
    @products = current_user.products

    @offers = {}

    @products.each do |product|
      product_offers = product.offers.joins(:hypothese)

      @offers[product.id] = {
        demenagement: product_offers.where(hypotheses:{ name: "Déménagement" }).order(:price).first,
        transport: product_offers.where(hypotheses:{ name: "Transport" }).order(:price).first
      }
    end

    @hypothese1_products = Product.joins(offers: :hypothese).where(hypotheses:{ name: "Déménagement" }).group(:id)
    @hypothese2_products = Product.joins(offers: :hypothese).where(hypotheses:{ name: "Transport" }).group(:id)

    # product.offers.order(:price).first


    # @orders = current_user.bookings
    @products = current_user.products
    if  current_user.transporter
      @transporter = Transporter.find_by(user: current_user.id)
      @offers = @transporter.offers
    else

    end

    @hypothese1 = []
    @hypothese2 = []

    @products.each do |product|
      product.offers.each do |offer|
        if offer.hypothese_id == 1
          @hypothese1 << offer
        else offer.hypothese_id == 2
          @hypothese2 << offer
        end
      end
    end
    @hypothese1.sort_by do |b|
      b.price
    end
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
      # format.html { redirect_to dashboards_path }
      format.js
    end
      # <-- will render `app/views/reviews/create.js.erb`
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
      # format.html { redirect_to dashboards_path }
      format.js
    end
  end
end
