Rails.application.routes.draw do

  resources :users, only: [:new, :create, :index]
  resource :session, only: [:new, :create, :destroy]

  resources :subs do
    resources :posts, only: [:create, :edit, :update]
  end

  resources :posts, only: [:destroy]

end
