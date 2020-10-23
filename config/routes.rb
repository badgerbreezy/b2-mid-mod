Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/mechanics/index', to: 'mechanics#index'
  get '/mechanics/:id', to: 'mechanics#show'
  patch '/mechanics/:id', to: 'mechanics#update'
  post '/mechanics/:id', to: 'mechanics#show'

  get '/parks/:id', to: 'parks#show'
end
