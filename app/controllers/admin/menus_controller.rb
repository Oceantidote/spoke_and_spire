class Admin::MenusController < ApplicationController
  before_action :set_menu, only: [:show, :edit, :destroy, :update, :use_today]
  def index
    @today_menu = Menu.where(today: true).first || Menu.first
    @menus = Menu.where.not(today: true)
  end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      redirect_to admin_menu_path(@menu)
    else
      render :new
    end
  end

  def show
  end

  def use_today
    Menu.where(today: true).update_all(today: false)
    @menu.update!(today: true)
    redirect_to admin_menus_path
  end

  def edit
  end

  def update
    if @menu.update!(menu_params)
      redirect_to edit_admin_menu_path(@menu)
    else
      render :edit
    end
  end

  def destroy
    @menu.destroy
    redirect_to admin_menus_path
  end

  private

  def menu_params
    params.require(:menu).permit(:title, :content, :today)
  end

  def set_menu
    @menu = Menu.friendly.find(params[:id])
  end
end


