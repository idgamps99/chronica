class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :diaries
  has_many :sent_friend_requests, class_name: 'Friend', foreign_key: :sender_id
  has_many :received_friend_requests, class_name: 'Friend', foreign_key: :recipient_id

  # has_many :friendships, through: :sent_friend_requests, source: :recipient
  # has_many :friendships, through: :received_friend_requests, source: :sender do
  #   where(friends: { accepted: true })
  # end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def pending_friend_requests
    received_friend_requests.where(accepted: false)
  end

  def friendships
    
  end
end
