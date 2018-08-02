class WeeklyListsController < ApplicationController
  def this_week
    this_week = ThisWeek.create(recipe_id: params[:recipe_id])
  end

  def view_week
    @this_weeks = ThisWeek.all
  end

  def shopping_list
    shopping_list = ShoppingList.create(recipe_id: params[:recipe_id], ingredient_id: params[:ingredient_id])
  end

  def shopping
    @shopping_lists = ShoppingList.all
  end
end
