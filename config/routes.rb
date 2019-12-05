Rails.application.routes.draw do
 
  devise_for :users
  resources :posts do
    resources :comments
  end

  get '/hello', to: 'pages#hello'
end
