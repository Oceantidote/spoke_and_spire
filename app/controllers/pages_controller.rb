class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :menu, :events, :gallery ]

  def home
    @current_promotion = Promotion.find_by(featured: true)
    @banner = Banner.first
    @today_menu = Menu.find_by(today: true)
    @photos = Photo.order(created_at: :desc).limit(4)
    @upcoming_events = Event.where("end_time > ?", Time.now).order(start_time: :asc).limit(4)
  end

  def menu
    @menu = Menu.where(today: true).first
  end

  def gallery
    @photos = Photo.order(created_at: :desc)
  end

  def events
    @events = Event.where("end_time > ?", Time.now).order(start_time: :asc)
  end
end
