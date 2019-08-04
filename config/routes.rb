Rails.application.routes.draw do
  resources :questions, only: [:create]
  root "top#index"
  resources :answer , only: [:create ,:new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
