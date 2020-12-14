require 'rails_helper'

describe FoodService, type: :service do
  before :each do
    @json = JSON.parse(file_fixture('food_service.json').read, symbolize_names: true)
  end
  it 'can return food service data' do
    query_data = "sweet potatoes"
    food_service = FoodService.food_details(query_data)
    expect(food_service).to be_a Hash
    expect(food_service).to have_key(:foods)
    expect(food_service[:foods]).to be_a Array
    expect(food_service[:foods][0][:gtinUpc]).to be_a String
    expect(food_service[:foods][0][:brandOwner]).to be_a String
    expect(food_service[:foods][0][:ingredients]).to be_a String
    expect(food_service[:foods][0][:description]).to be_a String
  end
end