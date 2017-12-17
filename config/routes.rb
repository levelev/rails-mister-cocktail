Rails.application.routes.draw do
  resources :cocktails, only: [:show, :index, :new, :create] do
    resources :doses, only: [:create, :destroy]
  end

  resources :ingredient, only [:show]

  root "cocktails#index"
end
