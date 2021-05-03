Rails.application.routes.draw do
  resources :challenges 
  devise_for :users
  get 'article/index'
  root to: 'challenges#new'
  get "sorted"=>"challenges#sorted"
  resources :challenges do
    member do
      put "upvote" => "challenges#upvote"
    end  
  end  
  resources :challenges do
    member do
      get "follow" => "challenges#follow"
    
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
