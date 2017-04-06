class AddDescriptionColumnToAnimals < ActiveRecord::Migration[5.0]
  def change
    add_column(:Animals, :description, :text)
  end
end
