json.extract! ingredient, :id, :name, :recipe_id, :store_section_id, :created_at, :updated_at
json.url ingredient_url(ingredient, format: :json)
