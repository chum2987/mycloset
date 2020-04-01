Rails.application.routes.draw do
  devise_for :users
  root to: "outfits#index"
  resources :outfits, only: [:index, :new, :create, :show]
  resources :users, only: [:show, :edit, :update] 
  resources :items, only:[:new, :create] do
    member do
      get 'closet'
    end
  end

end
