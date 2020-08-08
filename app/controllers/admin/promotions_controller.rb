class Admin::PromotionsController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :new, :index, :destroy, :update]
  before_action :set_promotion, only: [:show, :edit, :destroy, :update, :use_featured]

  def index
    @featured_promotion = Promotion.find_by(featured: true)
    @promotions = Promotion.where(featured: false)
  end

  def new
    @promotion = Promotion.new
  end

  def create
    @promotion = Promotion.new(promotion_params)
    if @promotion.save!
      redirect_to admin_promotions_path
    else
      render :new
    end
  end

  def show
  end

  def use_featured
    Promotion.where(featured: true).update_all(featured: false)
    @promotion.update!(featured: true)
    redirect_to admin_promotions_path
  end

  def edit
  end

  def update
    if @promotion.update(promotion_params)
      redirect_to admin_promotions_path
    else
      render :edit
    end
  end

  def destroy
    @promotion.destroy
    redirect_to admin_promotions_path
  end

  private

  def promotion_params
    params.require(:promotion).permit(:title, :featured)
  end

  def set_promotion
    @promotion = Promotion.find(params[:id])
  end
end


