class CreateEntries < ActiveRecord::Migration[7.1]
  def change
    create_table :entries do |t|
      t.string :title
      t.text :content
      t.date :date
      t.string :tag
      t.references :diary, null: false, foreign_key: true

      t.timestamps
    end
  end
end
