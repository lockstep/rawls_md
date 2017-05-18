Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users

  root to: 'groups#index'

  resources :groups, only: %i[index show]
end
