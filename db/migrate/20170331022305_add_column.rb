class AddColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :animals, :photo_url, :text
  end
end
