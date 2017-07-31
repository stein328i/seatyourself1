class AddHoursRange < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :opening_hours_range, :string
    add_column :restaurants, :closing_hours_range, :string
  end
end
