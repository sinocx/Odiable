class OffersController < ApplicationController
  def index
    @offers = policy_scope(Offer).order(created_at: :desc)
  end
  def new
    @offer = Offer.new
    authorize @offer
    @product = Product.find(params[:product_id])
    @user = current_user
  end

  def create
    @offer = Offer.new(offers_params)
    authorize @offer
    @product = Product.find(params[:product_id])
    @offer.product = @product
    @offer.status = 0
    # @offer.hypotheses_id  = params[:hypotheses_id]
    @transporter = Transporter.find_by(user_id: current_user.id)
    @offer.transporter = @transporter
    if @offer.save!
      redirect_to product_path(@product)
    else
      render :new
    end
  end
  def validate
    @product = Product.find(params[:product_id])
    @offer = Offer.find(params[:id])

    authorize @offer
    @product.status = 1
    @offer.status = 1
    other_offer = Offer.where(product_id: @product )
    other_offer.each do |offer|
      offer.status = 2
      offer.save
    end
    @product.save
    @offer.save
    redirect_to product_path(@product)
  end
  def refused
    @product = Product.find(params[:product_id])
    @offer = Offer.find(params[:id])
    authorize @offer
    @offer.status = 2
    @product.save
    @offer.save
    redirect_to product_path(@product)
  end

  def destroy
    @offer = Offer.Find(params[:id])
    @offer.destroy
    redirect_to
  end
  def offers_params
    params.require(:offer).permit(:price, :description, :hypothese_id)
  end

end
