Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/merchants', to: 'merchants#index'
  get '/merchants/new', to: 'merchants#new'
  post '/merchants', to: 'merchants#create'
  get '/merchants/:id', to: 'merchants#show'
  get '/merchants/:id/edit', to: 'merchants#edit'
  patch '/merchants/:id', to: 'merchants#update'
  delete '/merchants/:id', to: 'merchants#destroy'
  get '/items', to: 'items#index'
  get 'merchants/:merchant_id/items/new', to: 'songs#new'
  post 'merchants/:merchant_id/items', to: 'songs#create'
  get '/items/:id', to: 'items#show'
  get '/items/:id/edit', to: 'items#edit'
  patch '/items/:id/', to: 'items#update'
  delete '/items/:id/', to: 'items#destroy'

end
