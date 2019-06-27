class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show
  @item = Item.find(params[:id])
  end

  def new
    @merchant_id = params[:merchant_id]
  end

  def create
    item = Item.new(item_params)
    item.artist_id = params[:merchant_id]
    item.save!
    redirect_to "/items/#{item.id}"
end
end
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
