class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :destroy]

  def index
    @photos = Photo.all
  end

  def show; end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new photo_params

    if @photo.save
      redirect_to @photo
    else
      render 'new'
    end
  end

  def destroy
    @photo.destroy

    redirect_to photos_url
  end

  private

  def set_photo
    @photo = Photo.find params[:id]
  end

  def photo_params
    params.fetch(:photo, {}).permit(:image, :_destroy)
  end
end
