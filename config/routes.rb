Rails.application.routes.draw do
  resources :articles do
    member do
      put "like", to: "articles#upvote"
    end
  end
  
  devise_for :users, :controllers => {:registrations => "registrations"}

  resources :contacts, only: [:new, :create]

  match '*path' => redirect('/'), via: :get
  devise_scope :user do
    get '/users', to: 'devise/registrations#new'
    get '/users/password', to: 'devise/passwords#new'
  end
  
  root to: 'pages#landing'
end
