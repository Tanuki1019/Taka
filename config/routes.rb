Rails.application.routes.draw do

   get 'tweets/:tweet_id/likes' => 'likes#create'
   get 'tweets/:tweet_id/likes/:id' => 'likes#destroy'
  devise_for :users
  resources :users, only: [:show]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tweets do
    resources :likes, only: [:create, :destroy]
  end
  root 'tweets#index'

  

  patch 'tweets/:id' => 'tweets#update'
  
end
