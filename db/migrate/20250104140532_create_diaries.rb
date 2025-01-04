class CreateDiaries < ActiveRecord::Migration[7.1]
  def change
    create_table :diaries do |t|
      t.string :title
      t.boolean :private
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
