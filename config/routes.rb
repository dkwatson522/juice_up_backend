Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      devise_for :users
      resources :recipes
      resources :ingredients
      resources :user_ingredients
    end
  end
end
