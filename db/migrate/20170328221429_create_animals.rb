class CreateAnimals < ActiveRecord::Migration[5.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :string
      t.string :species
      t.string :string
      t.string :age
      t.string :intger

      t.timestamps
    end
  end
end
