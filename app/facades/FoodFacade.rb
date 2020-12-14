class FoodFacade
  
  def self.food_details(query_data)
    FoodService.food_details(query_data)[:foods].map do |food_data|
      Food.new(food_data)
    end
  end
end