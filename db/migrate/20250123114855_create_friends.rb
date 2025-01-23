class CreateFriends < ActiveRecord::Migration[7.1]
  def change
    create_table :friends do |t|
      t.references :sender, index: true, null: false, foreign_key: { to_table: :users }
      t.references :recipient, index: true, null: false, foreign_key: { to_table: :users }
      t.boolean :accepted

      t.timestamps
    end
  end
end
