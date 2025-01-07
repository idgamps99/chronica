class AddDiaryTypeToDiaries < ActiveRecord::Migration[7.1]
  def change
    add_column :diaries, :diary_type, :string
  end
end
