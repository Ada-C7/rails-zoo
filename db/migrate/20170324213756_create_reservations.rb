class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.string :first_guest_first_name
      t.string :first_guest_last_name
      t.string :second_guest_first_name
      t.string :second_guest_last_name
      t.string :third_guest_first_name
      t.string :third_guest_last_name
      t.string :fourth_guest_first_name
      t.string :fourth_guest_last_name
      t.string :email
      t.string :phone
      t.string :message
      t.string :diet
      t.string :status
      t.boolean :paid

      t.timestamps
    end
  end
end
