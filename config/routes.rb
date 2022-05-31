Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :wills, only: [:index, :show, :new, :create, :edit, :update] do
    member do
      post :invite
      patch :executor
    end
  end

  resources :articles, only: [:index, :show]
  resources :funerals

  # resources :executors, only: [:index, :show, :new, :create, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
