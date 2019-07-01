describe 'Item Update' do
  describe 'As a visitor' do
    describe 'When I visit a Item show page' do
      it 'I can update the item' do

        merchant_1 = Merchant.create!(name: 'Home Depot')
        hammer = merchant_1.items.create!(name: 'Hammer', description: 'This is a hammer', price: "75", inventory: 10)

        merchant_2 = Merchant.create!(name: 'REI')
        cam = merchant_2.items.create!(name: 'Cam', description: 'This is a cam', price: "10", inventory: 50 )

        visit item_path(hammer.id)

        click_link 'Edit'

        expect(current_path).to eq("/items/#{hammer.id}/edit")

        fill_in 'Name', with: "Hammer_1"
        click_on 'Update Item'

        expect(current_path).to eq("/items/#{hammer.id}")
        expect(page).to have_content('Hammer_1')
      end
    end
  end
end
