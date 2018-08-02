class CreateStoreMaps < ActiveRecord::Migration[5.2]
  def change
    create_table :store_maps do |t|
      t.string :aisl
      t.integer :aisle_number

      t.timestamps
    end
  end
end
