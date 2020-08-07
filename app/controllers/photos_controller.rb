class PhotosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:edit, :show, :update, :destroy ]

  def show
    @photo = Photo.friendly.find(params[:id])
    @photos = Photo.order(created_at: :desc).limit(12)
  end

  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def destroy
  end

  def create
    @photo.new(photo_params)
    if @photo.save
      redirect_to photo_path(@photo)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  private

  def photo_params
    params.require(:photo).permit(:photo, :title, :alt)
  end

  def set_photo
    @photo = Photo.find(params[:id])
  end

end
