class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def menu
    @menu = Menu.where(today: true).first
  end
end
