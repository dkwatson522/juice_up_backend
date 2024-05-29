Rails.application.routes.draw do
  devise_for :users
  resources :recipes
  resources :ingredients
  resources :user_ingredients
end
