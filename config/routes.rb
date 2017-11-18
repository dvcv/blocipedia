Rails.application.routes.draw do

  resources :charges, only: [:new, :create]

  resources :wikis
  devise_for :users, controllers: { registrations: "registrations" }

  # post '/downgrade' => 'users#make_role_standard', as: :make_role_standard


  root 'welcome#index'
end
