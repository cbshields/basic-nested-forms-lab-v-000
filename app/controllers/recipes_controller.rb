class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(name: "ingredient_1")
    @recipe.ingredients.build(name: "ingredient_2")
  end

  def create
    @recipe = Recipe.create(recipe_params)
    if @recipe.save
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  private
  def recipe_params
    params.require(:recipe).permit(:name,
    ingredients_attributes: [
      :name,
      :quantity
    ]
    )
  end

end
