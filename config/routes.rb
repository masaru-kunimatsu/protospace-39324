Rails.application.routes.draw do
  root to: 'prototypes#index'
<<<<<<< Updated upstream
  resources :prototypes, only: [:index]
=======
  resources :prototypes, only: [:index,:show,:new,:create,:edit,:update,:destroy]do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]
>>>>>>> Stashed changes
end
