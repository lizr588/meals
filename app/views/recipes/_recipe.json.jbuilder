json.extract! recipe, :id, :name, :category_id, :vegetarian, :amount, :unit, :ingredient_id, :tried, :rating, :meal_prep, :notes, :link, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
