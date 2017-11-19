Rails.application.routes.draw do
  resources :charges, only: [:new, :create]
  resources :wikis
  devise_for :users, controllers: { registrations: "registrations" }
  resources :users, only: [:show]
  get "users/:id", :controller => "users", :action => "show"

  post '/downgrade_to_standard' => 'downgrades#downgrade_to_standard', as: :downgrade_to_standard

  root 'welcome#index'
end
