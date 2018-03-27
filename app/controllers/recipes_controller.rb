class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    # @recipe.ingredients.build(name: "")
    # @recipe.ingredients.build(name: "")
    #solution
    2.times { @recipe.ingredients.build }
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
    params.require(:recipe).permit(:title, ingredients_attributes: [:id, :name,:quantity])
  end

end
