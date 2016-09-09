Rails.application.routes.draw do
  devise_for :non_profits
  devise_for :users
  #Still need to set a root route for Devise
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :categories, :users, :non_profits
end
