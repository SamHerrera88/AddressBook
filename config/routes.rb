Rails.application.routes.draw do
  root 'people#index'

  resources :emails
  resources :phones
  resources :people
  resources :addresses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
