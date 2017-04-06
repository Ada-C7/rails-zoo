class RenameImageColumnAnimals < ActiveRecord::Migration[5.0]
  def change
    rename_column(:Animals, :img_url, :img)
  end
end
