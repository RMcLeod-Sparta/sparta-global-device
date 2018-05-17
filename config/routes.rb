Rails.application.routes.draw do
  resources :videos
  resources :posts
  devise_for :users
  resources :homes

  root to: 'homes#index'
  devise_scope :user do get '/users' => 'devise/sessions#new' end
    get '/', to: 'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
