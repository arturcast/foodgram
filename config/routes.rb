Rails.application.routes.draw do
  get 'comments/create'

  get  '@:username',    to: 'users#profile',  as: :profile

  devise_for :users
  
  get  'posts/',        to: 'posts#index',    as: :posts
  post 'posts/',        to: 'posts#create'
  get  'posts/new',     to: 'posts#new',      as: :new_post
  get  'posts/:id',     to: 'posts#show',     as: :post

  post 'posts/:id/comments', to: 'comments#create', as: :comments

  delete 'posts/:id',   to: 'posts#destroy'
  
  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
