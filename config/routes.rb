Rails.application.routes.draw do
  get 'comments/create'
  devise_for :users
  get 'posts/index'
  root to:"posts#index"
  resources :posts
end
