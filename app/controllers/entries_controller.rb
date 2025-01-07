class EntriesController < ApplicationController

  def index
    @entries = Entry.where(diary_id: params[:diary_id])
    
  end
end
