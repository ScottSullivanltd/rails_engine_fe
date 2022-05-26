require "rails_helper"

RSpec.describe "Item Show Page", type: :feature do
  it "displays the item's attributes", :vcr do
    merchant1 = create :merchant
    item1 = create :item, {merchant_id: merchant1.id}
    item2 = create :item, {merchant_id: merchant1.id}

    visit merchant_item_path(merchant1, item1)

    expect(page).to have_content(item1.name)
    expect(page).to have_content(item1.description)
    expect(page).to have_content(item1.unit_price)
    expect(page).to_not have_content(item2.name)
    expect(page).to_not have_content(item2.description)
    expect(page).to_not have_content(item2.unit_price)
  end
end
