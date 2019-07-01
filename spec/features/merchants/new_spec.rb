require 'rails_helper'

RSpec.describe 'New Merchant' do
  describe 'As a visitor' do
    describe 'When I visit the new merchant form' do
      it 'I can create a new merchant' do
        visit '/merchants'
        click_button 'New Merchant'

        expect(current_path).to eq('/merchants/new')
        fill_in 'Name', with: 'McGuckins'
        fill_in 'Address', with: '123 Main'
        fill_in 'City', with: 'Boulder'
               click_on 'Create Merchant'
       expect(page).to have_content('McGuckins')
     end
   end
 end
end
