Rails.application.routes.draw do
  get 'up' => 'rails/health#show', as: :rails_health_check

  resources :lists, only: %i[index show new create] do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: %i[destroy]

  root 'lists#index'
end
