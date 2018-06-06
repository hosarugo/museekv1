Rails.application.routes.draw do

  devise_for :users,
               :path => '',
               :path_names => {:sign_in => 'login', :sign_out => 'logout', :edit => 'profile'}, #HR - Define new routes
               :controllers => {:registrations => 'registrations',
                                :confirmations => 'confirmations'}
  root to: 'pages#home'

  resources :users, only: [:show]

  resources :advertisements

  resources :photos

  resources :conversations, only: [:index, :create] do
       resources :messages, only: [:index, :create]
  end




  get '/search' => 'pages#search'

  get 'users/favorites'

  post '/advertisements/:id/favorite',to: "advertisements#favorited"

  delete '/advertisements/:id/unfavorite', to: "advertisements#unfavorite"


  get '/users/:id/favourites', to: "users#favourite"





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
