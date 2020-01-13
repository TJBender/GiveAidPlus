Rails.application.routes.draw do
  resources :volunteer_jobs
  # get 'http://f3d39808.ngrok.io/volunteer_jobs/:id', to: 'volunteer_jobs#show'
  resources :volunteers
  # get 'http://f3d39808.ngrok.io/volunteers/:id', to: 'volunteers#show'
  resources :companies
  resources :jobs
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
