Rails.application.routes.draw do
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
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
