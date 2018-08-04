class ChangeDataTypeForBoolean < ActiveRecord::Migration[5.2]
  def change
    change_column_null :recipes, :thisweek, false, false
  end
end
