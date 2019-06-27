class MerchantsController < ApplicationController

  def index
    @merchants = Merchant.all
  end

  def show
    @merchant = Merchant.find(params[:id])
  end

  def new
  end

  def create
    @merchant = Merchant.create(merchant_params)
    flash.notice = "Merchant #{@merchant.name} Created!"
    redirect_to '/merchants'
  end

  def edit
    def edit
      @merchant = Merchant.find(params[:id])
    end
  end

  def update
    # @merchant = Merchant.find(params[:id])
    @merchant.update({
      name: params[:@merchant][:name]
      # description: params[:task][:description]
      })
@merchant.save
redirect_to "/merchants/#{@merchant.id}"
end


  private
def merchant_params
  params.permit(:name)
end
end
