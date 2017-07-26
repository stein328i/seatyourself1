class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.integer :restaurant_id
      t.string :name
      t.string :party_size
      t.date :date
      t.integer :time

      t.timestamps
    end
  end
end
