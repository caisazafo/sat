Rails.application.routes.draw do
  resources :statuses

  get '/status/:id', to: 'statuses#status_by_source', as: 'showstatuses'
end
