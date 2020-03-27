Rails.application.routes.draw do
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

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
