Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'menu', to: "pages#menu", as: :menu
  get "gallery", to: "pages#gallery"
  resources :photos, only: [:show, :index]
  authenticate :user, ->(user) { user.admin? } do
    resources :banners
    namespace :admin do
      resources :photos
      resources :promotions
      resources :drinks, only: [:new, :create, :edit, :update, :destroy]
      resources :menus do
        member do
          patch :use_today
        end
      end
    end
  end
  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
