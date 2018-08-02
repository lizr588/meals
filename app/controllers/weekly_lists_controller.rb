class WeeklyListsController < ApplicationController
  def this_week
    this_week = ThisWeek.create(recipe_id: params[:recipe_id])
  end

  def view_week
    @this_weeks = ThisWeek.all
  end

  def shopping_list
    
  end

  def shopping

  end
end
