Rails.application.routes.draw do
  
  get '/' , to: 'home#home'
  get '/home' , to: 'home#home'

  namespace :authentication, path: '' , as: '' do
    resources :users, only: [:new,:create]
    resources :sessions, only: [:new,:create]
    get '/sessions/destroy' , to: 'sessions#destroy'
  end

  namespace :finanzas, path: '' , as: '' do
    resources :categorias, only: [:index,:new,:create,:update,:edit]
    resources :ingresos, only: [:index,:new,:create,:update,:edit]
    resources :egresos, only: [:index,:new,:create,:update,:edit]

    get '/categorias' , to: 'categorias#index'
    # get '/categorias/:id' , to: 'categorias#update' as: :update_categorias
  end

end
 