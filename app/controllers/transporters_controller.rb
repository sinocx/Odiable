class TransportersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new]

  def new
    @transporter = Transporter.new
    @user
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

