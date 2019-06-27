Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/merchants', to: 'merchants#index'
  get '/merchants/:id', to: 'merchants#show'
  get 'merchants/new', to: 'merchants#new'
  post '/merchants', to: 'mercahnts#create'
end
