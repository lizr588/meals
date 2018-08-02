class MainController < ApplicationController
  def index
  end

  def search
    render json: {ingredients: [], recipes: [], categories: []}
  end
end
