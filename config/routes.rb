Rails.application.routes.draw do
  get 'foo/bar'
  get 'foo/baz'
  root "static_pages#home"
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/contact'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

# the commands used are rails new sample_app --skip-bundle
# we change the Gemfile
# bundle config se --local without "production"
# bundle install