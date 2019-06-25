require 'rails_helper'

RSpec.describe "Merchant Index" do
  describe "As a Visitior" do
    it "I see all Merchants Names" do
      merchant_1 = Merchant.create!(name: "Home Depot")
      merchant_2 = Merchant.create!(name: "REI")
      merchant_3 = Merchant.create!(name: "Hazels")

      visit "/merchants"


    expect(page).to have_content(merchant_1.name)
    expect(page).to have_content(merchant_2.name)
    expect(page).to have_content(merchant_3.name)
      end
    end
  end
