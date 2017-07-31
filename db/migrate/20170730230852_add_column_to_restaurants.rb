class AddColumnToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :opening_time, :float
    add_column :restaurants, :closing_time, :float
    add_column :restaurants, :max_capacity, :integer
    add_column :restaurants, :party_size, :integer
  end
end
