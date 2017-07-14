Rails.application.routes.draw do
  devise_for :users
  get 'posts/index'

  get 'posts/create'

  get 'posts/', to: 'posts#index'

  get 'posts/new'

  post 'posts/', to: 'posts#create'

  delete 'posts/delete'

  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
