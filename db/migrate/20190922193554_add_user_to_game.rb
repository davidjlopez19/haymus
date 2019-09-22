class AddUserToGame < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :user, :string
  end
end
