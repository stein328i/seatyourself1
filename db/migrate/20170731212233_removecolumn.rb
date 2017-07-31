class Removecolumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :restaurants, :opening_hours_range
    remove_column :restaurants, :closing_hours_range
  end
end
