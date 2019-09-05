class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    ingredient_ids = params[:recipe][:ingredient_ids].reject!(&:blank?)
    @recipe.ingredients = Ingredient.find(ingredient_ids)
      if @recipe.valid?
        @recipe.save
        redirect_to recipe_path(@recipe)
      else
        render :new
      end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    redirect_to recipe_path(@recipe)
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.delete
    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(
      :name,
      :user_id
      # :ingredient_id,
    )
  end

end
