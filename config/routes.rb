Rails.application.routes.draw do
  devise_for :users
  root to: "outfits#index"
  resources :outfits, only: :index
  resources :users, only: [:show, :edit, :update] 

end
