Rails.application.routes.draw do
  root to: "static_pages#index"
  resources :menus

  namespace :api do
    resources :menus, only: [:update]
  end
end
