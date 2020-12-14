class FoodService

  
  def self.food_details(query_data)
    response = conn.get("/fdc/v1/foods/search") do |f|
      f.params[:query]=query_data
    end
    parse_data(response)
  end

  private

  def self.conn
    Faraday.new("https://api.nal.usda.gov") do |f|
      f.params[:api_key]=ENV['fdc_key']
    end
  end

  def self.parse_data(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end