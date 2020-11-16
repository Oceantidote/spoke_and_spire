class Admin::DrinksController < ApplicationController
  before_action :set_drink, only: [:show, :edit, :destroy, :update]

  def new
    @drink = Drink.new
  end

  def create
    @drink = Drink.new(drink_params)
    if @drink.save
      redirect_to admin_menus_path
    else
      render :new
    end
  end

  def edit
    @drink = Drink.find(params[:id])
  end

  def update
    if @drink.update(drink_params)
      redirect_to admin_menus_path
    else
      render :edit
    end
  end

  def destroy
    @drink.destroy
    redirect_to admin_menus_path
  end

  private

  def drink_params
    params.require(:drink).permit(:name, :category, :description, :photo)
  end

  def set_drink
    @drink = Drink.find(params[:id])
  end
end