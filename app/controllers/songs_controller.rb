class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
    @artist = Artist.find(params[:artist_id])
  end

  def create
    @artist = Artist.find(params[:artist_id])
    song = @artist.songs.create(song_params)
    if song.save
      redirect_to songs_path
    else
      render :new
    end
  end

  private

  def song_params
    params.require(:song).permit(:title, :length, :play_count)
  end
end
