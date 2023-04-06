Rails.application.routes.draw do

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  root to: 'static_pages#top'
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
  resources :users, only: %i[new create]
  resources :admin_users
  resources :password_resets, only: %i[new create edit update]
  resources :wines, only: %i[index show]
  resources :achievements, only: %i[index create]
  resource :profile, only: %i[show edit update destroy]
  resources :quizzes, only: %i[index show] do
    resources :questions, only: %i[index show] do
      get 'description', to: 'descriptions#show'
    end
  end
  get 'privacy_policy', to: 'static_pages#privacy_policy'
  get 'terms', to: 'static_pages#terms'
  namespace :admin do
    root to: 'wines#index'
    get 'login', to: 'user_sessions#new'
    post 'login', to: 'user_sessions#create'
    delete 'logout', to: 'user_sessions#destroy'
    resources :wines
    resources :aromas, except: %i[show]
  end
end
