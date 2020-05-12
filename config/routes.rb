Rails.application.routes.draw do
  resources :company_mops
  resources :mops
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/login'
  get 'sessions/welcome'
  get 'users/new'
  get 'users/create'
  resources :comments
  resources :deliveries
  resources :mats
  
  resources :company_mats
 root :to => 'pages#dashboard'
  resources :companies

resources :pages do 
	collection do 
		get :dashboard
		get :new_contracts
		get :one_day
  end
end
resources :users, only: [:new, :create, :show]
   get 'login', to: 'sessions#new'
   post 'login', to: 'sessions#create'

   get 'log_out', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
