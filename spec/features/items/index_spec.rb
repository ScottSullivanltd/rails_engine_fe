require "rails_helper"

RSpec.describe "Merchant Items Index Page", type: :feature do
  before do
    @merchant = create :merchant
    @item1 = create :item, {merchant_id: @merchant.id}
    @item2 = create :item, {merchant_id: @merchant.id}
    @item3 = create :item, {merchant_id: @merchant.id}
    @item4 = create :item, {merchant_id: @merchant.id}

    visit merchant_items_path(@merchant.id)
  end

  it "displays all of a merchant's items by name", :vcr do
    expect(page).to have_content(@item1.name)
    expect(page).to have_content(@item2.name)
    expect(page).to have_content(@item3.name)
    expect(page).to have_content(@item4.name)
  end

  it "links to item show page", :vcr do
    expect(page).to have_link(@item3.name)
    click_link(@item3.name)

    expect(current_path).to eq(merchant_item_path(@merchant, @item3.id))
    expect(current_path).to_not eq(merchant_item_path(@merchant, @item1.id))
  end
end
