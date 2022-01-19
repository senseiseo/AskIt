Rails.application.routes.draw do
  resource :session, only: %i[new create destroy]
  resources :users
  
  resources :questions do
    resources :answers, except: %i[new show]
  end

  root 'pages#index'
end

