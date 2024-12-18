Rails.application.routes.draw do

  resources :dogs
  root "dogs#index"

  get "up" => "rails/health#show", as: :rails_health_check

end
