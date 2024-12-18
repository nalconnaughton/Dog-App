Rails.application.routes.draw do

  get 'dogs/index'
  resources :dogs

  get "up" => "rails/health#show", as: :rails_health_check

end
