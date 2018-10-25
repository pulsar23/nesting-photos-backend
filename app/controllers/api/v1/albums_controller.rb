class Api::V1::AlbumsController < ApplicationController
  def index
    albums = current_user.own_albums
    render json: albums
  end

  def show
    album = Album.find(params[:id])
  end

  def new
    album = Album.new
  end

  def create
    album = current_user.albums.create(album_params)
    #userAlbum = UserAlbum.create(user_id: params[:admin_id], album_id: album.id)
    render json: album
  end

  def edit
  end

  private

  def album_params
    params.permit(:title, :admin_id)
    #params.require(:album).permit(:title, :admin_id)
  end
end
