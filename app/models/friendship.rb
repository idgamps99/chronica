class Friendship < ApplicationRecord
  belongs_to :sender, optional: true, class_name: "::User", inverse_of: :friendships_senders
  belongs_to :receiver, optional: true, class_name: "::User", inverse_of: :friendships_receivers

  def accept
    self.accepted = true
  end
end
