class AddLegNumbersToAnimals < ActiveRecord::Migration[5.0]
  def change
    add_column :animals, :leg_numbers, :integer
  end
end
