class RemoveReservationName < ActiveRecord::Migration[5.0]
  def change
    remove_column :reservations, :name
  end
end
