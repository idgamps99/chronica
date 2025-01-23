class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :diaries
  has_many :sent_friend_requests, class_name: 'Friend', foreign_key: :sender_id
  has_many :received_friend_requests, class_name: 'Friend', foreign_key: :recipient_id

  has_many :friendships, through: :sent_friend_requests, source: :recipient
  has_many :received_friendships, through: :received_friend_requests, source: :sender 

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def pending_friend_requests
    received_friend_requests.where(accepted: false)
  end

 def all_friendships
    friendships
 end

  def friendships
    sent_friend_requests.where(accepted: true)
  end
end
