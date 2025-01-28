class AddNameToUsersTable < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :forename, :string, null: false
    add_column :users, :surname, :string, null: false
  end
end
