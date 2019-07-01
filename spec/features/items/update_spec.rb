describe 'Item Update' do
  describe 'As a visitor' do
    describe 'When I visit a Item show page' do
      it 'I can update the item' do

        merchant = Merchant.create!(name: "Dry Pockets", address: "1008 Royal St George", city: "Naperville", state: "IL", zip: "60654")
        item = Item.create!(name: "Phone Baggie",
                            description: "Store phone when hiking",
                            price: 9.99,
                            image: "pic of baggie",
                            status: "active",
                            inventory: 30,
                            merchant_id: merchant.id)

        visit "/items/#{item.id}"

        click_link 'Edit'

        expect(current_path).to eq("/items/#{item.id}/edit")

        fill_in 'Name', with: "Phone Sleeve"
        fill_in 'Description', with: "Keep phone dry during hikes"
        click_on 'Update Item'

        expect(current_path).to eq("/items/#{item.id}")
        expect(page).to have_content('Phone Sleeve')
        expect(page).to have_content('Keep phone dry during hikes')
      end
    end
  end
end
