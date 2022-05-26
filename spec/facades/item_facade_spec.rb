require "rails_helper"

RSpec.describe ItemFacade do
  it "creates item poros", :vcr do
    item = ItemFacade.create_items
    expect(item).to be_an_instance_of(Item)
  end
end
