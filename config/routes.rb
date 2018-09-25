Rails.application.routes.draw do
  devise_for :users

devise_scope :user do
  authenticated :user do
    root 'transactions#index', as: :authenticated_root
  end

  unauthenticated do
    root 'devise/sessions#new', as: :unauthenticated_root
  end
end
  resources :transactions
  resources :relative_activities
end
