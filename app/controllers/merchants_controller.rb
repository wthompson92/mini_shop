class MerchantsController < ApplicationController

  def index
    @merchants = Merchant.all
  end

  def show
    @merchant = Merchant.find(params[:id])
  end
  #
  #
  # def create
  #   @merchant = Merchant.new(article_params)
  #   @article.save
  #   flash.notice = "Merchant #{@me.title} Created!"
  #   redirect_to article_path(@article)
  end
