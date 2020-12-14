require 'rails_helper'

describe Food, type: :poro do
  before :each do
    @food_data = {
      "fdcId": 566851,
      "description": "CHEDDAR",
      "lowercaseDescription": "cheddar",
      "dataType": "Branded",
      "gtinUpc": "828280001766",
      "publishedDate": "2019-04-01",
      "brandOwner": "FISCALINI",
      "ingredients": "PASTEURIZED COW'S MILK, CHEESE CULTURES, ENZYMES (MICROBIAL RENNET), SALT.",
      "allHighlightFields": "",
      "score": 844.0422,
      "foodNutrients": [
          {
              "nutrientId": 1079,
              "nutrientName": "Fiber, total dietary",
              "nutrientNumber": "291",
              "unitName": "G",
              "derivationCode": "LCCD",
              "derivationDescription": "Calculated from a daily value percentage per serving size measure",
              "value": 0.0
          },
          {
              "nutrientId": 1087,
              "nutrientName": "Calcium, Ca",
              "nutrientNumber": "301",
              "unitName": "MG",
              "derivationCode": "LCCD",
              "derivationDescription": "Calculated from a daily value percentage per serving size measure",
              "value": 714
          },
          {
              "nutrientId": 1089,
              "nutrientName": "Iron, Fe",
              "nutrientNumber": "303",
              "unitName": "MG",
              "derivationCode": "LCCD",
              "derivationDescription": "Calculated from a daily value percentage per serving size measure",
              "value": 0.0
          },
          {
              "nutrientId": 1104,
              "nutrientName": "Vitamin A, IU",
              "nutrientNumber": "318",
              "unitName": "IU",
              "derivationCode": "LCCD",
              "derivationDescription": "Calculated from a daily value percentage per serving size measure",
              "value": 1070.0
          },
          {
              "nutrientId": 1162,
              "nutrientName": "Vitamin C, total ascorbic acid",
              "nutrientNumber": "401",
              "unitName": "MG",
              "derivationCode": "LCCD",
              "derivationDescription": "Calculated from a daily value percentage per serving size measure",
              "value": 0.0
          },
          {
              "nutrientId": 1003,
              "nutrientName": "Protein",
              "nutrientNumber": "203",
              "unitName": "G",
              "derivationCode": "LCCS",
              "derivationDescription": "Calculated from value per serving size measure",
              "value": 26.8
          },
          {
              "nutrientId": 1004,
              "nutrientName": "Total lipid (fat)",
              "nutrientNumber": "204",
              "unitName": "G",
              "derivationCode": "LCCS",
              "derivationDescription": "Calculated from value per serving size measure",
              "value": 32.1
          },
          {
              "nutrientId": 1005,
              "nutrientName": "Carbohydrate, by difference",
              "nutrientNumber": "205",
              "unitName": "G",
              "derivationCode": "LCCS",
              "derivationDescription": "Calculated from value per serving size measure",
              "value": 3.57
          },
          {
              "nutrientId": 1008,
              "nutrientName": "Energy",
              "nutrientNumber": "208",
              "unitName": "KCAL",
              "derivationCode": "LCCS",
              "derivationDescription": "Calculated from value per serving size measure",
              "value": 400
          },
          {
              "nutrientId": 1093,
              "nutrientName": "Sodium, Na",
              "nutrientNumber": "307",
              "unitName": "MG",
              "derivationCode": "LCCS",
              "derivationDescription": "Calculated from value per serving size measure",
              "value": 679
          },
          {
              "nutrientId": 1253,
              "nutrientName": "Cholesterol",
              "nutrientNumber": "601",
              "unitName": "MG",
              "derivationCode": "LCCS",
              "derivationDescription": "Calculated from value per serving size measure",
              "value": 111
          },
          {
              "nutrientId": 1257,
              "nutrientName": "Fatty acids, total trans",
              "nutrientNumber": "605",
              "unitName": "G",
              "derivationCode": "LCCS",
              "derivationDescription": "Calculated from value per serving size measure",
              "value": 1.25
          },
          {
              "nutrientId": 1258,
              "nutrientName": "Fatty acids, total saturated",
              "nutrientNumber": "606",
              "unitName": "G",
              "derivationCode": "LCCS",
              "derivationDescription": "Calculated from value per serving size measure",
              "value": 21.4
          }
      ]
  }
  end
  describe 'instance methods' do
    it 'has gtinupc, description, brand_owner, ingredients' do
      food = Food.new(@food_data)
      expect(food).to be_a(Food)
      expect(food.gtinupc).to eq(@food_data[:gtinUpc])
      expect(food.description).to eq(@food_data[:description])
      expect(food.brand_owner).to eq(@food_data[:brandOwner])
      expect(food.ingredients).to eq(@food_data[:ingredients])
    end
  end
end