class AddPictureToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :picture, :string
  end
end
