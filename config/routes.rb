Rails.application.routes.draw do
  devise_for :users
  root to: 'tasks#index'
  resources :tasks, only: [:new, :create, :show] do
    resources :reviews, only: [:new, :create]
  end
  get 'user_tasks', to: 'tasks#user_tasks'
  resources :tags, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
