Rails.application.routes.draw do
  devise_for :users
  resources :bookings, only: %i[index]
  resources :products do
    resources :bookings
    collection do
      get :my_products
    end
  end
  root to: "pages#home"
end
