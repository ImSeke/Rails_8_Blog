Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  resources :posts do
    resources :comments
  end

  get "up" => "rails/health#show", as: :rails_health_check

  root "posts#index"
end
