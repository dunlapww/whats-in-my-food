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
    it "and I see a list of 10 foods that contain the ingredient 'sweet potatoes'"
    it 'and for each food I see the fods GTIN/UPC code, te foods description, brand owner, and ingredients'
  end
end