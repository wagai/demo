Rails.application.routes.draw do
  root to: "static_pages#index"
  resources :menus

  namespace :api do
    namespace :menu do
      resources :positions, only: [:update]
    end
  end
end
