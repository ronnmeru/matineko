Rails.application.routes.draw do
  get 'homes/top'
  get 'homes/about'
  get 'post_images/index'
  get 'post_images/show'
  get 'comments/index'
  get 'posts/show'
  get 'posts/new'
  get 'posts/edit'
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  get 'about' => 'homes#about'
  resources :users,only:[:index,:show,:edit,:update]
  get 'unsubscribe' => 'users#unsubscribe'
  patch 'withdraw' => 'users#withdraw'
  resources :posts,only:[:show,:new,:edit,:create,:update,:destroy]
  get 'confirm' => 'posts#confirm'
  post 'complete' => 'posts#complete'
  resources :likes,only:[:create,:destroy]
  resources :comments,only:[:index,:destroy,:create]
  resources :post_images,only:[:index,:show,:new,:create,:destroy]
end
