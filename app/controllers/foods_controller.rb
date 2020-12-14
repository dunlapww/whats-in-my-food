class FoodsController < ApplicationController
  def index
    @foods = facade(food_params[:q])
    require 'pry'; binding.pry
  end

  def conn
    Faraday.new("https://api.nal.usda.gov") do |f|
      f.params[:api_key]=ENV['fdc_key']
    end
  end

  def json(query_data)
    response = conn.get("/fdc/v1/foods/search") do |f|
      f.params[:query]=query_data
    end
    parse_data(response)
  end

  def parse_data(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def facade(query_data)
    json(query_data)[:foods].map do |food|
      Food.new
    end
  end

  private

  def food_params
    params.permit(:q)
  end
end
