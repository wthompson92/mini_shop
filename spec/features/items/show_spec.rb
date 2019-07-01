require 'rails_helper'

RSpec.describe 'As a visitor' do
  describe 'I visit an item show page' do
    it "then I see only that items's name, description, price,  inventory" do
      merchant_1 = Merchant.create!(name: 'Home Depot')

    hammer = merchant_1.items.create!(name: 'Hammer', description: 'This is a hammer', price: "75", inventory: 10)

      merchant_2 = Merchant.create!(name: 'REI')

      cam = merchant_2.items.create!(name: 'cam', description: 'This is a cam', price: "10", inventory: 50 )


      visit "/items/#{hammer.id}"

      expect(page).to have_content(hammer.name)
      expect(page).to have_content("By: #{merchant_1.name}")
      expect(page).to_not have_content(merchant_2.name)
    end
  end
end
