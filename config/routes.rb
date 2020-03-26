Rails.application.routes.draw do
  resources :mats
  resources :company_mats
 root :to => 'pages#index'
  resources :companies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
