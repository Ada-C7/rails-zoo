class RemoveStringColumn < ActiveRecord::Migration[5.0]
  def change

    remove_column :animals, :string

  end
end
