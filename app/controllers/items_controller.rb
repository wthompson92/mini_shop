class ItemsController < ApplicationController
  def index

    if params[:merchant_id].nil?
      @items = Item.all
    else
      @merchant = Merchant.find(params[:merchant_id])

      @items = @merchant.items
    end
  end

  def show
     @item = Item.find(params[:id])
     @merchant = Merchant.find(@item.merchant_id)
   end

  def new
    @merchant = Merchant.find(params[:merchant_id])
  end

  def create
    @item = Item.create(item_params)
    redirect_to merchant_items_path(@item.merchant_id)
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
    params.permit(:name, :description, :price, :inventory, :image, :status, :merchant_id)
  end

end
