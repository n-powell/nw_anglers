Rails.application.routes.draw do
  root to: "posts#landing"

  resources :posts do
    resources :responses
  end
  resources :responses

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
