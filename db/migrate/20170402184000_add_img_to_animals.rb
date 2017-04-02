class AddImgToAnimals < ActiveRecord::Migration[5.0]
  def change
    add_column(:Animals, :img_url, :string)
  end
end
