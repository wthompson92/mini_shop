require 'rails_helper'

RSpec.describe "Item Index" do
  describe "As a Visitior" do
    it "I see all Item Names" do
      merchant_1 = Merchant.create!(name: "Home Depot")
      merchant_2 = Merchant.create!(name: "REI")
      item_1 = merchant_1.items.create!(name: "Hammer", description: "This is a hammer", price: "10", inventory: 10, image: "hammer", status: "active")
      item_2 = merchant_2.items.create!(name: "Cam", description: "This is a cam", price: "75", image: "cam", inventory: 10, status:"active")
      visit "/items"
      expect(page).to have_content(item_1.name)
      expect(page).to have_content(item_1.description)
      expect(page).to have_content(item_1.price)
      expect(page).to have_content(item_1.image)
      expect(page).to have_content(item_1.status)
      expect(page).to have_content(item_1.inventory)
      expect(page).to have_content(merchant_1.name)

      expect(page).to have_content(item_2.name)
      expect(page).to have_content(item_2.description)
      expect(page).to have_content(item_2.price)
      expect(page).to have_content(item_2.image)
      expect(page).to have_content(item_2.status)
      expect(page).to have_content(item_2.inventory)
      expect(page).to have_content(merchant_2.name)
    end
  end

    describe 'Merchant Items show page' do
      describe 'As a visitor' do
        merchant_1 = Merchant.create!(name: "Home Depot")
        merchant_2 = Merchant.create!(name: "REI")
        item_1 = merchant_1.items.create!(name: "Hammer", description: "This is a hammer", price: "10", inventory: 10, image: "hammer", status: "active")
        item_2 = merchant_2.items.create!(name: "Cam", description: "This is a cam", price: "75", image: "cam", inventory: 10, status:"active")
          visit "/merchants/#{merchant_1.id}/items"

          expect(page).to have_content(item_1.name)
          expect(page).to have_content(item_1.price)
          expect(page).to have_content(item_1.image)
          expect(page).to have_content(item_1.status)
          expect(page).to have_content(item_1.inventory)

          visit "/merchants/#{merchant_2.id}/items"

          expect(page).to have_content(item_2.name)
          expect(page).to have_content(item_2.price)
          expect(page).to have_content(item_2.image)
          expect(page).to have_content(item_2.status)
          expect(page).to have_content(item_2.inventory)
        end
      end
    end
