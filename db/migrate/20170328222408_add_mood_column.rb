class AddMoodColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :animals, :mood, :string
  end
end
