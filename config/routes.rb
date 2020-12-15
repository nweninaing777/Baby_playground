Rails.application.routes.draw do
  root 'playgrounds#index'
  get 'relationships/create'
  get 'relationships/destroy'
  delete '/logout',to: 'sessions#destroy'
  resources :sessions, only: [:new, :create, :destroy]
  resources :playgrounds
  resources :posts
  resources :myakachans
  resources :conversations do
    resources :messages
  end
  resources :users
  resources :users do
    member do
      get :following, :followers
    end
  end #only: [ :new, :create, :show, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :relationships, only: [:create, :destroy]

end
