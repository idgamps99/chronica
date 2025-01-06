class DiariesController < ApplicationController

  def new
    @diary = Diary.new
  end

  def create
    params = diary_params
    params[:private] == 0 ? private = false : private = true
    @diary = Diary.new(title: params[:title], private: private, user_id: current_user.id)
    if @diary.save
      redirect_to root_path
    else
      render "diaries/new", status: :unprocessable_entity
    end
  end

  private

  def diary_params
    params.require(:diary).permit(:title, :private)
  end
end
