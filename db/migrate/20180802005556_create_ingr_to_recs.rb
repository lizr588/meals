class CreateIngrToRecs < ActiveRecord::Migration[5.2]
  def change
    create_table :ingr_to_recs do |t|
      t.integer :recipe_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
