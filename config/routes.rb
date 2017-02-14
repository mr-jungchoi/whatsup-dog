Rails.application.routes.draw do
  resources :users, except: :index
  resources :parks, only: [:index, :show]
  resources :dogs, except: :index do
    resources :walks
    resources :approvals, only: [:create, :destroy]
  end

  root to: "home#index"
end
