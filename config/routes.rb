Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get "event_logs", to: "event_logs#new"
  resources :event_logs

  root "home#index"
end
