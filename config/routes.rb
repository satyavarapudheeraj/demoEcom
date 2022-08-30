Rails.application.routes.draw do
  get 'orders/index'

  get 'orders/show'

  get 'orders/new'

  get 'carts/show'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :profiles
  resources :addresses
  # resources :products
  # get "/my_profile", to: 'profile#my_profile'
  # patch "/edit_my_profile", to: 'profile#edit_my_profile'
  # delete "/delete_my_profile", to: 'profile#delete_my_profile'
  resources :members
  resources :contacts
  resources :parameters
  resources :items
  resources :orders
  resources :line_items
  resources :carts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
