Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :profiles
  resources :addresses
  resources :products
  # get "/my_profile", to: 'profile#my_profile'
  # patch "/edit_my_profile", to: 'profile#edit_my_profile'
  # delete "/delete_my_profile", to: 'profile#delete_my_profile'
  resources :members
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
