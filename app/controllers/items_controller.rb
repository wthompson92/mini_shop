class ItemsController < ApplicationController

  def index
      if params[:merchant_id]
          @items = Merchant.find(params[:merchant_id])
        else
          @items = Item.all
      end
    end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @merchant_id = params[:merchant_id]
  end

  def create
    item = Item.new(item_params)
    item.merchant_id = params[:merchant_id]
    item.save!
    redirect_to items_path
  end

  def edit
  @item = Item.find(params[:id])
end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    @item.save
    redirect_to items_path
  end

 def destroy
   Item.destroy(params[:id])
   redirect_to items_path
 end

  private

  def item_params
    params.permit(:name, :description, :price, :inventory)
  end
end
