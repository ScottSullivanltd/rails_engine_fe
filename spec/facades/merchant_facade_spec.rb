require "rails_helper"

RSpec.describe MerchantFacade do
  it "creates merchant poros", :vcr do
    merch = MerchantFacade.create_merchants
    expect(merch).to be_an_instance_of(Merchant)
  end
end
