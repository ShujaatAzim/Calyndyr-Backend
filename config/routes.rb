Rails.application.routes.draw do
  resources :day_activities
  resources :activities
  resources :days
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
