class TransportersController < ApplicationController

  def new
    @transporter = Transporter.new
    authorize @transporter
  end

  def create
    @transporter = Transporter.new(user_params)
    authorize @transporter
    if @transporter.save
       redirect_to products_path
    else
      render :new
    end
  end

  def user_params
    params.require(:transporter).permit(:car, :capacity, :permit, :cin)

  end
end

