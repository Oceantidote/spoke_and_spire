Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  authenticate :user, ->(user) { user.admin? } do
    namespace :admin do
      resources :photos
      resources :menus do
        member do
          patch :use_today
        end
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
