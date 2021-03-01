Rails.application.routes.draw do
  get 'comments/create'
  devise_for :users
  get 'posts/index'
  root to:"posts#home"

  resources :posts do
    resources :comments
    resources :likes, only: [:create, :destroy]
    member do
      get 'home'
    end
  end

  resources :users
end
