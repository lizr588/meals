class CreateStoreSections < ActiveRecord::Migration[5.2]
  def change
    create_table :store_sections do |t|
      t.string :section
      t.integer :store_map_id

      t.timestamps
    end
  end
end
