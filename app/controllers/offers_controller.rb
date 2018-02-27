class OffersController < ApplicationController
  def new
    @offer = Offer.new
    @product = Product.find(params[:product_id])
    @user = current_user
  end

  def create
    @offer = Offer.new
    @product = Product.find(params[:product_id])
    @user = current_user
    if @offer.save && @offer.user.transporter
      redirect_to
    else
      render :new
    end
  end

  def destroy
    @offer = Offer.Find(params[:id])
    @offer.destroy
    redirect_to
  end

end
