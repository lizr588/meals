class AddIdToIngredients < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredients, :mastering_id, :integer
  end
end
