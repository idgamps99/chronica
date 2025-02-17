class FriendshipsController < ApplicationController
  def index
    @accepted = current_user.friends
    sender_ids = current_user.pending_received_requests.pluck(:sender_id)
    @pending = []
    sender_ids.each do |id|
      @pending << User.find(id)
    end
  end

  def show
    @friend = Friendship.find(params[:id])
  end
end
