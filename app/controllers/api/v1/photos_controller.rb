class PhotosController < ApplicationController
  def index
    photos = Photo.all
    render json: photos
  end

  def show
  end

  def new
    photo = Photo.new
  end

  def create
    photo = Photo.create(photo_params)
    render json: photo
  end

  def edit
  end

  private

  def photo_params
    params.require(:photo).permit(:title, :description, :location, :image_url, :user_id, :album_id)
  end

end
