Rails.application.routes.draw do
  resources :volunteer_jobs
  resources :volunteers
  get 'volunteers/:id/jobs', to: 'volunteers#jobs'
  resources :companies
  resources :jobs
  get 'jobs/:id', to: 'jobs#show'
  # post 'volunteer_jobs#show?'
  resources :users
end
