class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :category_id
      t.string :vegetarian
      t.float :amount
      t.string :unit
      t.integer :ingredient_id
      t.string :tried
      t.float :rating
      t.string :meal_prep
      t.string :notes
      t.string :link

      t.timestamps
    end
  end
end
