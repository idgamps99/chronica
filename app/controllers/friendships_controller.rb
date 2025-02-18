class FriendshipsController < ApplicationController
  before_action :set_friendship, only: [:accept, :reject]

  def index
    @accepted = current_user.friends
    sender_ids = current_user.pending_received_requests.pluck(:sender_id)
    @pending = []
    sender_ids.each do |id|
      @pending << User.find(id)
    end
  end

  def show
    @friend = current_user.friends.find(params[:id])
    @diaries = Diary.where(user_id: params[:id])
  end

  def accept
    @friendship = Friendship.find(params[:id])
    @friendship.accepted = true
    @friendship.save
    redirect_to friendships_path
  end

  def reject
    @friendship.destroy
    redirect_to friendships_path
  end

  private

  def set_friendship
    @friendship = Friendship.find(params[:id])
  end
end
