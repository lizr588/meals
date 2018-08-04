class CreateThisWeeks < ActiveRecord::Migration[5.2]
  def change
    create_table :this_weeks do |t|
      t.integer :recipe_id

      t.timestamps
    end
  end
end
