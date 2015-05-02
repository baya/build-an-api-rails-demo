Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :show, :update, :destroy]
      # resources :microposts, only: [:index, :create, :show, :update, :destroy]
      resources :sessions, only: [:create]
    end
  end
  
end
