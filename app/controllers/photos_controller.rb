class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def show
    @photo = Photo.friendly.find(params[:id])
  end

  def index
    @photos = Photo.all
  end
end
