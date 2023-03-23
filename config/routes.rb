Rails.application.routes.draw do
  root "static_pages#home"
  # we are going to use named routes
  # the form is
  # get "/path",  to: "controller_name#action"
  # this will generate
  # path_path -> '/path'
  # path_url  -> 'http://www.example.com/path'
  get "/help",    to: "static_pages#help"
  # we can use an alias by adding as: "alias"
  # this will create alias_path and alias_url 
  # to get us to the help page
  get "/about",   to: "static_pages#about"
  get "/contact", to: "static_pages#contact"
  get "/signup",  to: "users#new" 
  resources :users 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

# the commands used are rails new sample_app --skip-bundle
# we change the Gemfile
# bundle config se --local without "production"
# bundle install