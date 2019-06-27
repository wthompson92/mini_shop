require 'rails_helper'

RSpec.describe 'Edit Merchant' do
  describe 'When a visitor edits a Merchant' do
    describe 'They link from the show page' do
      it 'They can change merchant info' do
        merchant = Merchant.create!(name: "Mcguckins", address: "321 Canyon", city: "Boulder", state: "CO", zip: 80501)

        visit "/merchants/#{merchant.id}"
        click_button 'Edit'
        expect(current_path).to eq("/merchants/#{merchant.id}/edit")

        fill_in 'Name', with: 'Blackbelly'

    click_on "Update Merchant"
    # expect(current_path).to eq("/merchants/#{merchant.id}")


    expect(page).to have_content("Blackbelly")

  end
end
end
end
