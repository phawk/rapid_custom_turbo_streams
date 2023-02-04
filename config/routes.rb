Rails.application.routes.draw do
  resources :payments, only: [:new, :create] do
    get :pending, on: :collection
    get :success, on: :collection
  end

  root "payments#new"
end
