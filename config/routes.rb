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



  get '/search' => 'pages#search'

  # get '/preload' => 'reservations#preload'
  # get '/preview' => 'reservations#preview'
  # get '/your_trips', to: 'reservations#your_trips'
  # get '/your_reservations' => 'reservations#your_reservations'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
