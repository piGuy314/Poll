Rails.application.routes.draw do
  resources :comments
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :users do
    resource :profile
    resources :polls do
    resource :comments

  end
  resources :comments
end

resources :links do
  member do
    put "like", to: "links#upvote"
    put "dislike", to: "links#downvote"
  end
end
root "links#index"


  get 'about', to: 'pages#about'
  resources :contacts, only: :create
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
end
