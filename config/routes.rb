Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :users do
    resource :profile
    resources :polls do
    resource :poll
  end
end

  get 'about', to: 'pages#about'
  resources :contacts, only: :create
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
end
