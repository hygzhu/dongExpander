Rails.application.routes.draw do
  resources :dongs

  
  get '/', to: 'dongs#index'
  get '/dongs/expand', to: 'dongs#expand'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
