class ChangeColumnTypeForPaid < ActiveRecord::Migration[5.0]
     def change
          change_column :reservations,
          :paid, :string
     end
end
