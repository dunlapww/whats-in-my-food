require 'rails_helper'

describe 'As a User' do
  describe 'when I visit the welcome page and enter sweet potatoes and click search' do
    before :each do
      visit '/'
      fill_in :q, with: "sweet potatoes"
      click_on "Search"
    end
    it "I'm directed to /foods and the number of foods" do
      expect(current_path).to eq('/foods')
    end
    it "and I see a list of 10 foods that contain the ingredient 'sweet potatoes'" do
      expect(page).to have_content("Below are the first 10 results")
      expect(page).to have_css(".food", count: 10)
    end
    it 'and for each food I see the fods GTIN/UPC code, the foods description, brand owner, and ingredients' do
      within(first(".food")) do
        expect(page).to have_css('.description')
        expect(page).to have_css('.gtiupc')
        expect(page).to have_css('.brand_owner')
        expect(page).to have_css('.ingredients')
      end
    end
  end
end