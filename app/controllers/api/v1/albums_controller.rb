class AlbumsController < ApplicationController
  def index
    albums = Album.all
    render json: albums
  end

  def show
    album = Album.find(params[:id])
  end

  def new
  end

  def create
    album = Album.create(album_params)
    render json: album
  end

  def edit
  end

  private

  def album_params
    params.require(:album).permit(:title, :admin_id)
  end
end
