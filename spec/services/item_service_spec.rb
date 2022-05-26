require "rails_helper"

RSpec.describe ItemService do
  describe "API repo endpoint" do
    it "gets item data from rails engine endpoint", :vcr do
      json = ItemService.get_data
      expect(json).to have_key(:name)
    end
  end
end
