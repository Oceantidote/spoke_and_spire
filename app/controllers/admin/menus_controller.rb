class Admin::MenusController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :new, :index, :destroy, :update]
  before_action :set_menu, only: [:show, :edit, :destroy, :update, :use_today]
  def index
    @today_menu = Menu.where(today: true).first || Menu.first
    @menus = Menu.where.not(today: true, id: @today_menu.id)
    @wines = Drink.where(category: "Wines from around the world")
    @lagers = Drink.where(category: "Continental Lagers")
    @ales = Drink.where(category: "Craft Ales")
    @ciders = Drink.where(category: "British Ciders")
  end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      if @menu.today
        Menu.where.not(id: @menu.id).where(today: true).update_all(today: false)
      end
      redirect_to admin_menus_path
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
      if @menu.today
        Menu.where.not(id: @menu.id).where(today: true).update_all(today: false)
      end
      redirect_to admin_menus_path
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


