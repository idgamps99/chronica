class Friendship < ApplicationRecord
  belongs_to :sender, class_name: "User"
  belongs_to :receiver, class_name: "User"

  scope :accepted, -> { where(accepted: true) }

  def accept
    update(accepted: true)
  end
end
