Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
       resources :users, only: [:create]
       resources :albums

       get '/users/profile', to: 'users#profile'
       post '/users/albums', to: 'users#albums'
    end
  end
  post 'api/v1/users/login', to: 'auth#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
