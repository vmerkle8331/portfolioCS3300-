Rails.application.routes.draw do
  resources :projects

  root "projects#index"
  resources :projects

end