Rails.application.routes.draw do
  resources :merchants do
    get '/merchants/:merchant_id/items', to:'items#merchant_item_index'
    resources :items, only: [:new, :create]
    end
  resources :items, only: [:index, :show, :edit, :update]
end
