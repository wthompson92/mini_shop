require 'rails_helper'

RSpec.describe "Item Index" do
  describe "As a Visitior" do
    it "I see all Item Names" do
      merchant_1 = Merchant.create!(name: "Home Depot")
      merchant_2 = Merchant.create!(name: "REI")
      item_1 = merchant_1.items.create!(name: "Hammer", description: "This is a hammer", price: "10", inventory: 10)
      item_2 = merchant_2.items.create!(name: "Cam", description: "This is a cam", price: "75",   inventory: 10)
      visit "/items"
      expect(page).to have_content(item_1.name)
      expect(page).to have_content(item_2.name)
      end
    end
  end
