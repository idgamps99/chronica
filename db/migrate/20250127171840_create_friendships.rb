class CreateFriendships < ActiveRecord::Migration[7.1]
  def change
    create_table :friendships do |t|
      t.references :sender, null: false
      t.references :receiver, null: false
      t.boolean :accepted, default: false

      t.timestamps
    end
  end
end
