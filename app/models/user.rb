class User < ApplicationRecord
  has_many :diaries
  has_many :sent_friendships, class_name: "Friendship", foreign_key: :sender_id, dependent: :destroy
  has_many :received_friendships, class_name: "Friendship", foreign_key: :receiver_id, dependent: :destroy

  has_many :sent_friends, through: :sent_friendships, source: :receiver
  has_many :received_friends, through: :received_friendships, source: :sender

  # Get all accepted friends (both sent & received)
  def friends
    User.where(id: sent_friendships.accepted.select(:receiver_id))
        .or(User.where(id: received_friendships.accepted.select(:sender_id)))
  end


  # Get pending friendship requests sent by the user
  def pending_sent_requests
    sent_friendships.where(accepted: false)
  end

  # Get pending friendship requests received by the user
  def pending_received_requests
    received_friendships.where(accepted: false)
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
