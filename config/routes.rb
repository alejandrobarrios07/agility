Rails.application.routes.draw do
  resources :tracks
  resources :duos
  root 'home#index'
  resources :handlers
  get 'home/index'
  resources :dogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
