class ImageFields < ActiveRecord::Migration[5.0]
  def change
    add_column :animals, :image, :string, :default => "http://lorempixel.com/400/200/animals/"
  end
end
