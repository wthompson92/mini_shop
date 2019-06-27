require "rails_helper"

describe "visitor deletes a merchant" do
  describe "it links from the show page" do
    it "displays all articles without the deleted entry" do
      merchant = Merchant.create!(name: "King Soops", address: "123 28th", city: "Boulder", state: "CO")
      merchant_2 = Merchant.create!(name: "Safeway", address: "123 30th", city: "Boulder", state: "CO" )

      visit "/merchants/#{merchant.id}"
      click_button "Delete"

      expect(current_path).to eq("/merchants")
      expect(page).to have_content(merchant_2.name)
      expect(page).to_not have_content(merchant.name)
    end
  end
end
