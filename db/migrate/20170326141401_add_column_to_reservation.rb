class AddColumnToReservation < ActiveRecord::Migration[5.0]
  def change
       add_column :reservations,
       :number_of_guests, :integer
  end
end
