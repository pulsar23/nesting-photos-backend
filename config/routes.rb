Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      
        get '/users/profile', to: 'users#profile'

       resources :users, only: [:create, :show]
       resources :albums
       resources :photos


       #get '/users/:id/albums', to: 'users#albums'
       #get '/users/:id/photos', to: 'users#photos'
    end
  end
  post 'api/v1/users/login', to: 'auth#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
