Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  resources :restaurants do
    resources :reviews, only: [:new, :create, :show]

  end
end
