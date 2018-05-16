Rails.application.routes.draw do
  get '/repository/index'
  root '/repository#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/repository/jobs', to: 'repository#jobs'
  get '/repository/log', to: 'repository#log'
end
