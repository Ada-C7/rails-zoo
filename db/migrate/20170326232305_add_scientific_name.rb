class AddScientificName < ActiveRecord::Migration[5.0]
  def change
    add_column :animals, :sci_name, :string
  end
end
