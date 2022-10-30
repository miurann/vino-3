Rails.application.routes.draw do
  resources :users
  namespace :admin do
    root to: 'dashboards#index'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
