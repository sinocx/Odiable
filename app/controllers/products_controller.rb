class ProductsController < ApplicationController

  def index
    @products = policy_scope(Product).order(created_at: :desc)

  end

  def show
    @product = Product.find(params[:id])
    @offers = Offer.where(product_id: @product.id)
    authorize @product
  end

  def new
    @product = Product.new
    authorize @product
  end

  def create
    @product = Product.new(product_params)
    authorize @product
    @product.user = current_user
    authorize @product
    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def edit
    authorize @product
    @product = Product.find(params[:id])
  end

  def update
    authorize @product
    @product = Product.find(params[:id])
    @product.update(product_params)
  end

  def destroy
    authorize @product
    @product = Product.find(params[:id])
    @product.destroy
  end

    private

  def product_params
    authorize @product
    params.require(:product).permit(:title, :description, :status)
  end

end
