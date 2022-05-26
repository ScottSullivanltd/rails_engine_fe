require "rails_helper"

RSpec.describe Item do
  it "exists and has attributes" do
    data = {name: "Item Test"}
    item = Item.new(data)

    expect(item.name).to eq(data[:name])
    expect(item).to be_an_instance_of(Item)
  end
end
