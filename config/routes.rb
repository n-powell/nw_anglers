Rails.application.routes.draw do
  root to: "posts#landing"

  resources :posts do
    resources :responses
  end

  devise_for :users do
    resources :trips
  end


  resources :trips
  resources :responses

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
