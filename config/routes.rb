Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :wills, only: [:index, :show, :new, :create, :edit, :update]
  resources :executors, only: [:index, :show, :new, :create, :edit, :update]
  resources :articles, only: [:index, :show]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :funerals, only: [:new, :create, :index]
end
