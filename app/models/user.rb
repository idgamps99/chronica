class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :diaries
  has_many :friends
  has_many :users, class_name: :Friend, foreign_key: :user_id
  has_many :followed_users, class_name: :Friend, foreign_key: :followed_user_id
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
