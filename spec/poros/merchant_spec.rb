require "rails_helper"

RSpec.describe Merchant do
  it "exists and has attributes" do
    data = {name: "Merchant Test"}
    merch = Merchant.new(data)

    expect(merch.name).to eq(data[:name])
    expect(merch).to be_an_instance_of(Merchant)
  end
end
