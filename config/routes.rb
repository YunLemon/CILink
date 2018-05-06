Rails.application.routes.draw do
  get 'repository/index'
  root 'repository#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'repository/log', to: 'repository#log'
end
