Rails.application.routes.draw do
  resources :challenges
  devise_for :users
  get 'article/index'
  root to: 'challenges#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
