class ChageColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :ingredients, :mastering_id, :masteringr_id
  end
end
