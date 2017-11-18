Rails.application.routes.draw do

  resources :charges, only: [:new, :create]

  resources :wikis
  devise_for :users, controllers: { registrations: "registrations" }

  post '/downgrade_to_standard' => 'downgrades#downgrade_to_standard', as: :downgrade_to_standard

  root 'welcome#index'
end
