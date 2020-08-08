class BannersController < ApplicationController
  before_action :set_banner, only: [:edit, :update]

  # GET /banners/new
  def new
    @banner = Banner.new
  end

  # GET /banners/1/edit
  def edit
  end

  # POST /banners
  # POST /banners.json
  def create
    @banner = Banner.new(banner_params)
    set_cards_and_slides
    if @banner.save
      redirect_to root_path, notice: 'Banner was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /banners/1
  # PATCH/PUT /banners/1.json
  def update
    set_cards_and_slides
    if @banner.update(banner_params)
      redirect_to root_path, notice: 'Banner was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /banners/1
  # DELETE /banners/1.json

  private

    def set_cards_and_slides
      @banner.card_one = Photo.find(banner_params[:card_one_id])
      @banner.card_two = Photo.find(banner_params[:card_two_id])
      @banner.card_three = Photo.find(banner_params[:card_three_id])
      @banner.slide_one = Photo.find(banner_params[:slide_one_id])
      @banner.slide_two = Photo.find(banner_params[:slide_two_id])
      @banner.slide_three = Photo.find(banner_params[:slide_three_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_banner
      @banner = Banner.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def banner_params
      params.require(:banner).permit(:title, :slide_one_id, :slide_two_id, :slide_three_id, :slide_four_id, :slide_four_title, :card_one_id, :card_two_id, :card_three_id, :card_one_content, :card_two_content, :card_three_content, :slide_one_image_alt_text, :slide_one_title, :slide_two_image_alt_text, :slide_two_title, :slide_three_image_alt_text, :slide_three_title, :card_one_title, :card_one_image_alt_text, :card_two_image_alt_text, :card_two_title, :card_three_title, :card_three_image_alt_text, :slide_one_image_alt_text, :slide_one_title, :slide_two_image_alt_text, :slide_two_title, :slide_three_image_alt_text, :slide_three_title, :card_one_title, :card_one_image_alt_text, :card_two_image_alt_text, :card_two_title, :card_three_title, :card_three_image_alt_text)
    end
end




















