class AssociationUserRestaurant < ActiveRecord::Migration[5.0]
  def change
    change_table :restaurants do |t|
      t.belongs_to :user
    end
  end
end
