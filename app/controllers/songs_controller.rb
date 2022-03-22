class SongsController < ApplicationController

  def show
    @song = Song.find(params[:id])
    @singer = Singer.find(@song.singer_id)
  end
end
