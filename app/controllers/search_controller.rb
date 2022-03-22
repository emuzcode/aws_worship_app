class SearchController < ApplicationController

  def search_results
    @range = params[:range]
    @word = params[:keyword]
    
    if @range == "Singer"
      @singers = Singer.where("lower(name_en) LIKE ?", "%#{@word.downcase}%")
    else
      @songs = Song.where("lower(name_en) LIKE ?", "%#{@word.downcase}%")
    end
  end
end
