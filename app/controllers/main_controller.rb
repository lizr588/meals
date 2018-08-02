class MainController < ApplicationController

  def index
  end

  def search
    @ingredients = Ingredient.ransack(name_cont: params[:q]).result(distinct: true)
    @recipes = Recipe.ransack(name_cont: params[:q]).result(distinct: true)
    @categories = Category.ransack(name_cont: params[:q]).result(distinct: true)

    respond_to do |format|
      format.html {}
      format.json {
        @ingredients = @ingredients.limit(5)
        @recipes = @recipes.limit(5)
        @categories = @categories.limit(5)
      }
    end
    # render json: {ingredients: [], recipes: [], categories: []}
  end

end
