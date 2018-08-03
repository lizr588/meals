class WeeklyListsController < ApplicationController
# push item to this week
  def this_week
    this_week = ThisWeek.create(recipe_id: params[:recipe_id])
  end

# view week's recipes
  def view_week
    @this_weeks = ThisWeek.all
  end

# push ingredients to shopping list
  def shopping_list
    shopping_list = ShoppingList.create(recipe_id: params[:recipe_id], ingredient_id: params[:ingredient_id])
  end

# view shopping list
  def shopping
    @shopping_lists = ShoppingList.all
    @ingredients = Ingredients.all
  end
end
