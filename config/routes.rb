Rails.application.routes.draw do
  resources :shoutouts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
 
  root 'shoutouts#index'
  
  # Defines the root path route ("/")
  # root "articles#index"
end
