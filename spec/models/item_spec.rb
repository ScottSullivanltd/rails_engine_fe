require "rails_helper"

RSpec.describe Item do
  describe "relationships" do
    it { should belong_to(:merchant) }
  end

  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }
    it { should validate_numericality_of(:unit_price) }
  end
end
