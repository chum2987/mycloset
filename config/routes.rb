Rails.application.routes.draw do
  devise_for :users
  root to: "outfits#index"
  resources :outfits, only: [:index, :new, :create]
  resources :users, only: [:show, :edit, :update] 
  resources :items, only:[:new, :create]

end
