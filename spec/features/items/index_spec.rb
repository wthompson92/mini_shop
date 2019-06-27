require 'rails_helper'

RSpec.describe "Item Index" do
  describe "As a Visitior" do
    it "I see all Item Names" do
      merchant_1 = Merchant.create!(name: "Home Depot")
      merchant_2 = Merchant.create!(name: "REI")
      item_1 = merchant_1.items.create!(name: "Hammer")
      item_2 = merchant_2.items.create!(name: "Cam")

      visit "/items"

    expect(page).to have_content(item_1.name)
    expect(page).to have_content(item_2.name)
      end
    end
  end
