require 'test_helper'

class RecipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe = recipes(:one)
  end

  test "should get index" do
    get recipes_url
    assert_response :success
  end

  test "should get new" do
    get new_recipe_url
    assert_response :success
  end

  test "should create recipe" do
    assert_difference('Recipe.count') do
      post recipes_url, params: { recipe: { amount: @recipe.amount, category_id: @recipe.category_id, ingredient_id: @recipe.ingredient_id, link: @recipe.link, meal_prep: @recipe.meal_prep, name: @recipe.name, notes: @recipe.notes, rating: @recipe.rating, tried: @recipe.tried, unit: @recipe.unit, vegetarian: @recipe.vegetarian } }
    end

    assert_redirected_to recipe_url(Recipe.last)
  end

  test "should show recipe" do
    get recipe_url(@recipe)
    assert_response :success
  end

  test "should get edit" do
    get edit_recipe_url(@recipe)
    assert_response :success
  end

  test "should update recipe" do
    patch recipe_url(@recipe), params: { recipe: { amount: @recipe.amount, category_id: @recipe.category_id, ingredient_id: @recipe.ingredient_id, link: @recipe.link, meal_prep: @recipe.meal_prep, name: @recipe.name, notes: @recipe.notes, rating: @recipe.rating, tried: @recipe.tried, unit: @recipe.unit, vegetarian: @recipe.vegetarian } }
    assert_redirected_to recipe_url(@recipe)
  end

  test "should destroy recipe" do
    assert_difference('Recipe.count', -1) do
      delete recipe_url(@recipe)
    end

    assert_redirected_to recipes_url
  end
end
