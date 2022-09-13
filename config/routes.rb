Rails.application.routes.draw do
  devise_for :users
  authenticated :user do
    root to: 'articles#show', as: :user
  end

	root "articles#index"

	resources :articles do
    resources :comments
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
