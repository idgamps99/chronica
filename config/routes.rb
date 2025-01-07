Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "up" => "rails/health#show", as: :rails_health_check

  resources :diaries, only: [:new, :create] do
    resources :entries, only: [:index]
  end
end
