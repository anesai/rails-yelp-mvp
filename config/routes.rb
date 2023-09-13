Rails.application.routes.draw do
  get 'reviews/new'

  resources :reviews, only: [:show]

  resources :restaurants do
    resources :reviews, only: [:index, :new, :create]
  end
end
