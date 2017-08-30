Rails.application.routes.draw do

  resources :users, only: [:new, :create, :index]
  resource :session, only: [:new, :create, :destroy]

  resources :subs, except: [:destroy]
  resources :posts, except: [:destroy, :index]

end
