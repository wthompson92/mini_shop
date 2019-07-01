require 'rails_helper'

RSpec.describe "Merchant Show" do
  describe "As a Visitior" do
    it "I see all Merchants Names, Address, City, State, and Zip" do
      merchant_1 = Merchant.create!(id:1, name: "Home Depot", address: "123 Main", city: "Boulder", state: "CO", zip: "80302")
      merchant_2 = Merchant.create!(id: 2, name: "REI",address: "123 28th St.", city: "Boulder", state: "CO", zip: "80301")

      visit "/merchants/#{merchant_1.id}"


    expect(page).to have_content(merchant_1.name)
    expect(page).to have_content(merchant_1.address)
    expect(page).to have_content(merchant_1.city)
    expect(page).to have_content(merchant_1.state)
    expect(page).to have_content(merchant_1.zip)

      end
    end
  end
