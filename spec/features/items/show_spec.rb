require 'rails_helper'

RSpec.describe 'As a visitor' do
  describe "When I visit '/merchants/:merchant_id/items'" do
    it "Then I see each Item that belongs to the Merchant with that merchant_id including the Item's: name, price, image, active/inactive status, inventory" do

      merchant_1 = Merchant.create!(name: 'Home Depot', address: '123 canyon st', city: 'Boulder', state: 'CO', zip: 80302)

      hammer = merchant_1.items.create(name: "Hammer", description: "This is a Hammer", price: '25', status: 'active', inventory: 100)
      visit "/items/#{merchant_1.id}"

      expect(current_path).to eq("/items/#{hammer.id}")
      expect(page).to have_content(hammer.name)
      expect(page).to have_content(hammer.description)
      expect(page).to have_content(hammer.price)
      expect(page).to have_content(hammer.status)
      expect(page).to have_content(hammer.inventory)
    end
  end
end
