require "rails_helper"

RSpec.describe MerchantService do
  describe "API repo endpoint" do
    it "gets merchant data from rails engine endpoint", :vcr do
      json = MerchantService.get_data
      expect(json).to have_key(:name)
    end
  end
end
