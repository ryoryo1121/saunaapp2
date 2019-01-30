Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  devise_for :users
  root 'home#index'
  get '/contact' => 'home#contact'
  resources :users, :only => [:index, :show]
  resources :facilities

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
