Rails.application.routes.draw do
  
  get '/' , to: 'home#home'
  get '/home' , to: 'home#home'

  namespace :authentication, path: '' , as: '' do
    resource :users, only: [:new,:create]
    resource :sessions, only: [:new,:create]
    get '/sessions/destroy' , to: 'sessions#destroy'
  end

  namespace :finanzas, path: '' , as: '' do
    resource :categorias, only: [:index,:new,:create,:update,:edit]

    get '/categorias' , to: 'categorias#index'
  end

end
 