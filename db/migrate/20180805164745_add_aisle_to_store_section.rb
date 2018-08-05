class AddAisleToStoreSection < ActiveRecord::Migration[5.2]
  def change
    add_column :store_sections, :aisle, :integer
  end
end
