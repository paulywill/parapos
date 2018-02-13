Rails.application.routes.draw do
  get 'packjobs/index'

  resources :packjobs
  resources :rigs

  root 'packjobs#index'
end
