Rails.application.routes.draw do
  resources :repositories do
    resources :jobs
  end
  resources :jobs do
    resource :log
  end
  root 'repositories#index'
end
