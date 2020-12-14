class Food
  attr_reader :gtinupc, :description, :brand_owner, :ingredients
  def initialize(food_data)
    @gtinupc = food_data[:gtinUpc]
    @description = food_data[:description]
    @brand_owner = food_data[:brandOwner]
    @ingredients = food_data[:ingredients]
  end
end