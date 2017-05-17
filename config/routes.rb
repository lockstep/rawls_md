Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  unauthenticated :user do
    root to: 'pages#landing'
  end
end
