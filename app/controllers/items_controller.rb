class ItemsController < ApplicationController

  def index
    @items = Item.all
  end
end

#   def new
#   end
#
#   def create
#   Merchant.create(merchant_params)
#     redirect_to '/merchants'
#   end
#
#   def edit
#     def edit
#       @merchant = Merchant.find(params[:id])
#     end
#   end
#
#   def update
#     # @merchant = Merchant.find(params[:id])
#     @merchant.update(merchant_params)
#       # description: params[:task][:description]
# @merchant.save
# redirect_to "/merchants/#{@merchant.id}"
# end
#
# def destroy
#   Merchant.destroy(params[:id])
# redirect_to "/merchants"
# end
#
#   private
# def merchant_params
#   params.permit(:name)
# end
# end
