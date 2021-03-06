class Admin::PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :destroy, :update]
  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    mini_image = MiniMagick::Image.new(photo_params[:photo].tempfile.path)
    mini_image.resize '1200x1200'
    if @photo.save
      redirect_to admin_photo_path(@photo)
    else
      render :new
    end
  end

  def show
    @photos = Photo.all
  end

  def edit
    @photos = Photo.all
  end

  def update
    if @photo.update!(photo_params)
      redirect_to edit_admin_photo_path(@photo)
    else
      render :edit
    end
  end

  def destroy
    @photo.destroy
    redirect_to admin_photos_path
  end

  private

  def photo_params
    params.require(:photo).permit(:title, :alt, :photo)
  end

  def set_photo
    @photo = Photo.friendly.find(params[:id])
  end
end

