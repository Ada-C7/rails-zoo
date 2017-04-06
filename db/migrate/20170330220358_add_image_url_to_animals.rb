class AddImageUrlToAnimals < ActiveRecord::Migration[5.0]
  def change
    add_column :animals, :image_url, :string
  end
end
