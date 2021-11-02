Rails.application.routes.draw do
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "log_form", to: "log_form#new"

  root to: "home#index"
end
