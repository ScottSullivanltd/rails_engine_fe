require "rails_helper"

RSpec.describe "Merchant Show Page", type: :feature do
  it "displays list of merchant items", :vcr do
    merchant1 = create :merchant
    merchant2 = create :merchant
    item1 = create :item, {merchant_id: merchant1.id}
    item2 = create :item, {merchant_id: merchant1.id}
    item3 = create :item, {merchant_id: merchant2.id}

    visit merchant_path(merchant1.id)

    expect(page).to have_content(item1.name)
    expect(page).to have_content(item2.name)
    expect(page).to_not have_content(item3.name)
  end
end
