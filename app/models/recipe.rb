class Recipe < ActiveRecord::Base
  has_many :ingredients
  def ingredients_attributes=(ingredients)
    ingredients.values.each do |ingredient|
      self.ingredients.build(ingredient)
    end
  end
end
