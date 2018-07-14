class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    artist = Artist.new(artist_params)
    if artist.save
      redirect_to artist_path(artist)
    else
      flash[:alert] = "Sorry, that artist already exists!"
      redirect_to new_artist_path
    end
  end

  def show
    @artist = Artist.find(params[:id])
    session[:secret] = "This time for real, though."
  end

  private

  def artist_params
    params.require(:artist).permit(:name)
  end
end
