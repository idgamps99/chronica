class FriendshipsController < ApplicationController
  def index
    @accepted = Friendship.where(sender_id: current_user, accepted: true).or(Friendship.where(receiver_id: current_user, accepted: true))
    @pending = Friendship.where(sender_id: current_user, accepted: false).or(Friendship.where(receiver_id: current_user, accepted: false))
  end
end
