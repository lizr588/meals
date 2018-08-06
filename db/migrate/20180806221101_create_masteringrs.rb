class CreateMasteringrs < ActiveRecord::Migration[5.2]
  def change
    create_table :masteringrs do |t|
      t.integer :ingredient_id
      t.string :name
      t.integer :store_section_id

      t.timestamps
    end
  end
end
