//Update gems
bundle install

//Create seeds
rake db:drop db:create db:migrate db:seed

//Run the app
rails s
