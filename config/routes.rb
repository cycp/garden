Rails.application.routes.draw do
  # devise_for :users
  devise_for :users
  # controllers: { sessions: :sessions },

  root to: "home#index"

  get 'users/:id', to: 'users#show', as: 'user' 
  get 'plants/show', to: "plants#show"

  get 'plants/new', to: "plants#new"
  post 'plants/new', to: "plants#create"

  get 'users/:id/garden', to: 'gardens#show', as: 'garden'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
