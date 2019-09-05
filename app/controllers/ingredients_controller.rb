class IngredientsController < ApplicationController
  def index
    ingredients = Ingredient.joins(:allergies).group("ingredient_id").order("count(user_id) desc")
    allingredients = Ingredient.all - ingredients
    @everything = ingredients + allingredients
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end
end
