Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      

    end
  end

  resources :contacts, only: [:index, :show, :create, :update]

  resources :notes, only: [:index, :show, :create, :update]

end
