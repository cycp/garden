Rails.application.routes.draw do
  # devise_for :users
  devise_for :users
  # controllers: { sessions: :sessions },

  root to: "home#index"

  get 'users/:id', to: 'users#show', as: 'user' 
  get 'plants/show', to: "plants#show"

  get 'plants/new', to: "plants#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
