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
  namespace :api do
    namespace :v1 do
     resources :challenges
    end     
  end
  get '/404', to: "errors#not_found"
  get '/422', to: "errors#unacceptable"
  get '/500', to: "errors#internal_error"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
