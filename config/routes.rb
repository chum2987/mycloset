Rails.application.routes.draw do
  devise_for :users
  root to: "outfits#index"
  resources :outfits, only: [:index, :new, :create, :show, :destroy] do
    resources :likes, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update] 
  resources :items, only:[:new, :create, :show, :destroy] do
    member do
      get 'closet'
    end
    collection do
      get 'search'
    end
  end

end
