Rails.application.routes.draw do
  resources :volunteer_jobs
  resources :volunteers
  get 'volunteers/:id/jobs', to: 'volunteers#jobs'
  resources :companies
  resources :jobs
  resources :users
end
