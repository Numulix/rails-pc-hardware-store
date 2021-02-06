Rails.application.routes.draw do
  resources :cases
  resources :power_supplies
  resources :video_cards
  resources :storages
  resources :memories
  resources :motherboards
  resources :processor_coolers
  resources :processors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
