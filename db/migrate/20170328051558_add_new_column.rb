class AddNewColumn < ActiveRecord::Migration[5.0]
  def change
    add_column("animals", "image_link", :string)
    remove_column("animals", "count", :integer)
  end
end
