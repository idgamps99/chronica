class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :diaries
  has_many :friendship_senders, class_name: "::Friendship", foreign_key: :sender_id, inverse_of: :sender
  has_many :friendship_receivers, class_name: "::Friendship", foreign_key: :receivers_id, inverse_of: :receiver
  has_many :sender_users, through: :friendships_senders, source: :receiver
  has_many :receiver_users, through: :friendships_reciever, source: :sender

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
