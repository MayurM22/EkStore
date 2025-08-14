Rails.application.routes.draw do
  devise_for :users
  
  root "home#index"

  resources :documents
  get '/d/:share_token', to: 'documents#public_show', as: 'public_document'

end
