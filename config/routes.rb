Rails.application.routes.draw do
  root 'photos#index'

  resources :photos, except: [:edit, :update]
end
