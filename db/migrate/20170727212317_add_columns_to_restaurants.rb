class AddColumnsToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :neighbourhood, :string
    add_column :restaurants, :summary, :text
  end
end
