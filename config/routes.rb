Rails.application.routes.draw do
  # devise_for :users
  devise_for :users
  # controllers: { sessions: :sessions },

  root to: "home#index"
  get 'plants/show', to: "plants#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
