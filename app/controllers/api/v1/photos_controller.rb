class Api::V1::PhotosController < ApplicationController
  def index
    photos = current_user.photos
    render json: photos
  end

  def show
    photo = Photo.find(params[:id])
  end

  def new
    photo = Photo.new
  end

  def create
    photo = current_user.photos.create(photo_params)
    render json: photo
  end

  def edit
  end

  def destroy
    photo = current_user.photos.find(params[:id])
    photo.destroy
    render json: photo
  end

  private

  def photo_params
    params.permit(:title, :description, :location, :image_url, :user_id, :album_id)
  end

end
