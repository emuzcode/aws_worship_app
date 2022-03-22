class LikesController < ApplicationController
  before_action :song_params
  
  def create
    @like = Like.new(user_id: current_user.id, song_id: params[:id])
    if @like.save
      respond_to do |format|
        format.html { redirect_to @user }
        format.js
      end
    else
      render 'users/new'
    end
  end
  
  def destroy
    Like.find_by(user_id: current_user.id, song_id: params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end
  
  private
  
    def song_params
      @song = Song.find(params[:id])
    end
end
