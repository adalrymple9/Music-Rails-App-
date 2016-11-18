Rails.application.routes.draw do
  resources :albums
  resources :labels
  get 'site/search'
  root 'site#search'
  post '/site/search'

  resources :artists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
