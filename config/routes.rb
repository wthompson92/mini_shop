Rails.application.routes.draw do
  resources :merchants do
    resources :items, only: [:index, :new, :create]
    end
  resources :items, only: [:index, :show, :edit, :update, :destroy]
end
