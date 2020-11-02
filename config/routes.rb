Rails.application.routes.draw do
  root to: 'welcome#index'

  resources :questions, only: [:index, :show]

  resources :results, only: [:index]
end
