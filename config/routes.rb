Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "up" => "rails/health#show", as: :rails_health_check

  resources :diaries, only: [:new, :create] do
    resources :entries, only: [:index, :new, :create, :destroy]
  end

  resources :entries, only: [:edit, :update]
  resources :friendships, only: [:index, :show]
  patch "friendships/:id/accept", to: "friendships#accept", as: :accept_friendship
  delete "friendships/:id/reject", to: "friendships#reject", as: :reject_friendship
  resources :users, only: [:index]
end
