class FriendshipsController < ApplicationController
  def index
    @accepted = current_user.friends
  end
end
