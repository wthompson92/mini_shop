class MerchantsController < ApplicationController
  before_action :find_params, only: [:show, :edit, :update, :destroy]

  def index
    @merchants = Merchant.all
  end

  def show
  end

  def new
  end

  def create
  @merchant = Merchant.create(merchant_params)
    redirect_to merchants_path
  end

    def edit
    end


  def update
      @merchant.update(merchant_params)
      @merchant.save
      redirect_to merchant_path
  end

  def destroy
    @merchant.destroy
    redirect_to merchants_path
  end

private
  def merchant_params
    params.permit(:name, :address, :city, :state, :zip)
  end

  def find_params
    @merchant = Merchant.find(params[:id])
  end
end
