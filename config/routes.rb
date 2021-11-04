Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get "event_logs", to: "event_logs#new"
  delete 'event_logs/:id', to: 'event_logs#destroy'

  resources :event_logs do 
    resources :comments
  end
  
  # resources :event_logs
  root 'event_logs#new'
end
