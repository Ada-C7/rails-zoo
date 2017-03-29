class RenamingImageToImgLink < ActiveRecord::Migration[5.0]
  def change
    rename_column :animals, :image, :img_link
  end
end
