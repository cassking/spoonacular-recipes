Rails.application.routes.draw do
  root 'static_pages#index'

  resources :recipes, only: %w(show index)

  # namespace :api do
  #   namespace :v1 do
  #     resources :texts, only: [:create]
  #   end
  # end
end
