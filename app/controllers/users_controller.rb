class UsersController < ApplicationController
  def index
    @users = User.where.not(id: current_user)
    if params[:query].present?
      @users = @users.where(forename: params[:query].downcase.capitalize)
    end
  end
end
