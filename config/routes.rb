Rails.application.routes.draw do
  root to: "outfits#index"
  resources :outfits, only: :index
end
