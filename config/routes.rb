Rails.application.routes.draw do
  resources :subscriptions
  resources :user_subscriptions
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
