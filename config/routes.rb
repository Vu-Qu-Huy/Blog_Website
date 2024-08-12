Rails.application.routes.draw do
  resources :tags
  get 'users/profile'
  get 'u/:id', to: 'users#profile', as: 'user'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :posts do
    resources :comments
    resources :likes, only: [:create, :destroy]
  end
  get "your_posts", to: "posts#your_posts"
  get "home", to: "pages#home"
  get "about", to: "pages#about"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
