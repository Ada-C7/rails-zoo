class AddColorFieldToAnimals < ActiveRecord::Migration[5.0]
  def change
    add_column :animals, :color, :string
  end
end
