Rails.application.routes.draw do
  get 'users/index'
  devise_for :users
  resources :cases
  resources :power_supplies
  resources :video_cards
  resources :storages
  resources :memories
  resources :motherboards
  resources :processor_coolers
  resources :processors
  root 'static_pages#home'
  match '/users', to: 'users#index', via: 'get'
  match '/users/:id', to: 'users#show', via: 'get'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
