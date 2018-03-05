class ProductsController < ApplicationController

  def index
    @product = Product.new
    if params[:query].present?
      @products = policy_scope(Product).search_by_ad(params[:query])
    else
    @products = policy_scope(Product).order(created_at: :desc)
    end
  end

  def show
    @product = Product.find(params[:id])
    @offers = Offer.where(product_id: @product.id)
    authorize @product
    @products = Product.where.not(ad_latitude: nil, ad_longitude: nil, aa_latitude: nil, aa_longitude: nil)
    @markers = []
    @markers << { lat: @product.ad_latitude, lng: @product.ad_longitude }
    @markers << { lat: @product.aa_latitude, lng: @product.aa_longitude }
    @offer = Offer.new

  end

  def new
    @product = Product.new
    authorize @product
  end

  def create
    @product = Product.new(product_params)
    authorize @product
    @product.status = 0
    @product.user = current_user
    authorize @product
    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
    authorize @product
  end

  def update
    @product = Product.find(params[:id])
    authorize @product
    @product.update(product_params)
    redirect_to product_path(@product)

  end

  def destroy
    @product = Product.find(params[:id])
    authorize @product
    @product.destroy
    redirect_to products_path

  end

    private

  def product_params
    params.require(:product).permit(:title, :description, :photo, :aa, :ad, :date)
  end

end
