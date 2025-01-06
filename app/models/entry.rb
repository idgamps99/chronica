class Entry < ApplicationRecord
  belongs_to :diary

  validates :title, :content, presence: true 
end
