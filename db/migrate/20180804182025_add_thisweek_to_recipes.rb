class AddThisweekToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :thisweek, :boolean, null: false, default: false
  end
end
