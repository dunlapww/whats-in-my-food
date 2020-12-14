require 'rails_helper'

describe FoodFacade, type: :facade do
  before :each do
    query_data "sweet potatoes"
    @facade = FoodFacade.food_details(query_data)
  end
  it 'class methods' do
    expect @facade.to be a Array
    expect @facade.first to be_a Food
  end
end