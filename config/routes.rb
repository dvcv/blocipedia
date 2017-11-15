Rails.application.routes.draw do
  resources :wikis

  devise_for :users, controllers: { registrations: "registrations" }
  root 'welcome#index'
end
