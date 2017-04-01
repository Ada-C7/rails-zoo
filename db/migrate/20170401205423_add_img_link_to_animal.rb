class AddImgLinkToAnimal < ActiveRecord::Migration[5.0]
  def change
    add_column :animals, :img_link, :string
  end
end
