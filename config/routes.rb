Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :show, :update, :destroy]
      # resources :microposts, only: [:index, :create, :show, :update, :destroy]
      resources :sessions, only: [:create]
      scope path: '/user/:user_id' do
        resources :microposts, only: [:index]
      end
    end
  end
  
end
