class AddFavoriteSnack < ActiveRecord::Migration[5.0]
  def change
    add_column :animals, :snack, :string
  end
end
