Rails.application.routes.draw do
  resources :addresses
  resources :people
  get 'welcome/index'
  root 'welcome#index'
end
