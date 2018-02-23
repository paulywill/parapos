Rails.application.routes.draw do
  get 'packjobs/index'

  resources :packjobs do
    resources :rigs
  end


  resources :rigs
  resources :packers

  root 'packjobs#index'
end
