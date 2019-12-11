Rails.application.routes.draw do
  root 'pages#index'
  match '*path', to: 'pages#index', via: :all

  devise_for :users

  resources :posts do
    resources :comments
  end

  get '/index', to: 'pages#index'
end
