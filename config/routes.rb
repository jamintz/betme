Rails.application.routes.draw do
  devise_for :users
  resources :games
  resources :answers
  resources :guesses
  resources :props
  resources :users
  
  root "games#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
