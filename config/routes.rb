Rails.application.routes.draw do
  devise_for :users

  resources :products do
    resources :bookings
  end

  resources :users do
    resources :bookings
  end

  root to: "pages#home"
end
