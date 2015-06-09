Rails.application.routes.draw do

  resources :urls, only: [:index, :show, :create]

  root 'urls#index'

  get '/:slug', to: 'urls#show', as: :slug

end
