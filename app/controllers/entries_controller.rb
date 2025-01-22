class EntriesController < ApplicationController
  before_action :set_diary, only: [:index, :new, :create, :destroy]
  before_action :set_entry, only: [:edit, :update]

  def index
    @entries = Entry.where(diary_id: params[:diary_id])
  end

  def edit
    @entry = Entry.find(params[:id])
    @diary = Diary.find(@entry.diary_id)
  end

  def update
    if @entry.update(entry_params)
	    redirect_to edit_entry_path(@entry), notice: 'Entry was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)
    @entry.date = Date.new
    @entry.diary = @diary
    if @entry.save
      redirect_to diary_entries_path(@diary)
    else
      render "entries/new", status: :unprocessable_entity
    end
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
    redirect_to diary_entries_path(@diary)
  end

  private

  def entry_params
    params.require(:entry).permit(:title, :content, :tag)
  end

  def set_entry
    @entry = Entry.find(params[:id])
  end

  def set_diary
    @diary = Diary.find(params[:diary_id])
  end
end
