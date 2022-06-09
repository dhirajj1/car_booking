Rails.application.routes.draw do
  devise_for :searches
  devise_for :users
  resources :users
  get 'search', to: 'search#index'
  

 
  resources :articles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "devise/sessions#new"
  resources :search

  # root "devise/seesions#new"
  # resources :search
end
