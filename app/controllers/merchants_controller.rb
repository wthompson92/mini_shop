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
    @merchant = Merchant.new(article_params)
    flash.notice = "Merchant #{@merchant.name} Created!"
    redirect_to article_path(@article)
  end
end
