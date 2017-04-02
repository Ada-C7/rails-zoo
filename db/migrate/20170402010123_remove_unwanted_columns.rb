class RemoveUnwantedColumns < ActiveRecord::Migration[5.0]

  def change
    remove_column :animals, :string
    remove_column :animals, :intger
    remove_column :animals, :age    
    add_column :animals, :age, :integer
  end

end
