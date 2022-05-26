class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.create_merchants
  end

  def show
    @merchant = Merchant.find(params[:id])
  end
end
