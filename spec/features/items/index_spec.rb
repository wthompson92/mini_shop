require 'rails_helper'

RSpec.describe 'As a visitor' do
  describe "When I visit '/items'" do
    it "Then I see each Item in the system including the Item's: name, description, price, status, inventory, and the name of the merchant that sells the item"  do

      merchant_1 = Merchant.create!(name: 'Home Depot', address: '123 canyon st', city: 'Boulder', state: 'CO', zip: 80302)

      hammer = merchant_1.items.create(name: "Hammer", description: "This is a Hammer", price: '25', status: 'active', inventory: 100)
      wrench = merchant_1.items.create(name: "wrench", description: "This is a wrench", price: "12", status: "active", inventory: 50)


      merchant_2 = Merchant.create!(name: 'REI', address: '123 Pearl', city: 'Boulder', state: 'CO', zip: 67890)

      cam = merchant_2.items.create(name: "cam", description: "This is a cam", price: "75", status: 'active', inventory: 50)

      visit '/items'

      expect(current_path).to eq("/items")
      expect(page).to have_content(hammer.name)
      expect(page).to have_content(hammer.description)
      expect(page).to have_content(hammer.price)
      expect(page).to have_content(hammer.staus)
      expect(page).to have_content(hammer.inventory)
      expect(page).to have_content(cam.name)
      expect(page).to have_content(cam.description)
      expect(page).to have_content(cam.price)
      expect(page).to have_content(cam.status)
      expect(page).to have_content(cam.inventory)
    end
  end
  end
