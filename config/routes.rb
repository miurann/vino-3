Rails.application.routes.draw do
  root to: 'users#index'
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
  resources :users
  resources :admin_users
  resources :wines, only: %i[index show]
  resources :quizzes, only: %i[index show] do
    resources :questions, only: %i[index show] do
      get 'description', to: 'descriptions#show'
    end
  end
  resources :achievements, only: %i[create]

  namespace :admin do
    root to: 'dashboards#index'
    get 'login', to: 'user_sessions#new'
    post 'login', to: 'user_sessions#create'
    delete 'logout', to: 'user_sessions#destroy'
    resources :wines
    resources :aromas, except: %i[show]
  end
end
