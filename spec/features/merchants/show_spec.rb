require 'rails_helper'

RSpec.describe "Merchant Show" do
  describe "As a Visitior" do
    it "I see all Merchants Names, Address, City, State, and Zip" do
      merchant_1 = Merchant.create!(name: "Home Depot", address: "123 Main", city: "Boulder", state: "CO", zip: "80302")
      merchant_2 = Merchant.create!(name: "REI",  address: "123 28th St.", city: "Boulder", state: "CO", zip: "80301")
      merchant_3 = Merchant.create!(name: "Hazels",  address: "123 Canyon St.", city: "Boulder", state: "CO", zip: "80300")

      visit '/merchants/:id'

    expect(page).to have_content(merchant_1.name)
    expect(page).to have_content(merchant_1.address)
    expect(page).to have_content(merchant_1.city)
    expect(page).to have_content(merchant_1.state)
    expect(page).to have_content(merchant_1.zip)
    expect(page).to have_content(merchant_2.name)
    expect(page).to have_content(merchant_2.address)
    expect(page).to have_content(merchant_2.city)
    expect(page).to have_content(merchant_2.state)
    expect(page).to have_content(merchant_2.zip)  expect(page).to have_content(merchant_3.name)
    expect(page).to have_content(merchant_3.address)
    expect(page).to have_content(merchant_3.city)
    expect(page).to have_content(merchant_3.state)
    expect(page).to have_content(merchant_3.zip)
      end
    end
  end
