class SingersController < ApplicationController

  def index
    @alphabet = params[:alphabet_id]
    show_singer = Singer.where("lower(name_en) LIKE ?", "#{@alphabet}%")
    @singers = show_singer.all
  end
  
  def show
    @singer = Singer.find(params[:id]) 
    show_songs = Song.where(singer_id: @singer)
    @songs = show_songs.all
  end
  
  def back_to_singer
    @singer = Singer.find(params[:singer_id]) 
    show_songs = Song.where(singer_id: @singer)
    @songs = show_songs.all
  end
end
