Rails.application.routes.draw do
  resources :cocktails, only: [:show, :index, :new, :create] do
    resources :doses, only: [:create, :destroy]
  end
  root "cocktails#index"
end
