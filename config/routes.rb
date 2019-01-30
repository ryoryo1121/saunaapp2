Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get '/contact' => 'home#contact'

  get '/users/login' => 'users#sign_up'
  resources :users

  resources :facilities

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
