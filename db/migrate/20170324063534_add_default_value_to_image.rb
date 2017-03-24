class AddDefaultValueToImage < ActiveRecord::Migration[5.0]
  def change
    change_column :animals, :image, :string, :default => "https://hushpuppyoil.com/wp-content/uploads/2016/10/HP-Image-Coming-soon-holder.jpg"
  end
end
