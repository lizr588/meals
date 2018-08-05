class ChangeDTforThisweek < ActiveRecord::Migration[5.2]
  def change
    change_column_null :recipes, :thisweek, from: false, to: true
    change_column_default :recipes, :thisweek, false
  end
end
