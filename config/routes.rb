QaSite::Application.routes.draw do
  resources :users
  resources :questions
  resource :session, only: %w(new create destroy)
  root 'questions#index'
end
