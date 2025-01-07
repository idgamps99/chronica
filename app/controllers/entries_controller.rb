class EntriesController < ApplicationController

  def index
    @entries = Entry.where(diary_id: params[:diary_id])
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @entry = Entry.new
  end

  def create
  end
end
