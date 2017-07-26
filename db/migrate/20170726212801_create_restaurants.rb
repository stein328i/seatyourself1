class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :price_range
      t.text :menu
      t.string :url

      t.timestamps
    end
  end
end
