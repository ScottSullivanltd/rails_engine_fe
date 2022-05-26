require "rails_helper"

RSpec.describe "Merchants Index Page", type: :feature do
  before do
    @merchant1 = create :merchant
    @merchant2 = create :merchant
    @merchant3 = create :merchant

    visit merchants_path
  end

  it "displays list of merchant names", :vcr do
    expect(page).to have_content(@merchant1.name)
    expect(page).to have_content(@merchant2.name)
    expect(page).to have_content(@merchant3.name)
  end

  it "has a link to merchant show page", :vcr do
    expect(page).to have_link(@merchant1.name)

    click_link @merchant1.name
    expect(current_path).to eq(merchant_path(@merchant1.id))
    expect(current_path).to_not eq(merchant_path(@merchant2.id))
  end
end
