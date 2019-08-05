Rails.application.routes.draw do
  resources :questions, only: [:create, :show]
  root "top#index"
  resources :answers, only: [:create, :new, :edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
