class CreateAnimals < ActiveRecord::Migration[5.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :species
      t.string :scientific_name
      t.integer :age
      t.string :photo_url

      t.timestamps
    end
  end
end
