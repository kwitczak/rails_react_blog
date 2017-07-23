Rails.application.routes.draw do
  root 'home_page#index'
  get 'home_page', to: 'home_page#index'

  get 'admin', to: 'admin#index'
  get 'blog', to: 'posts#index', as: :blog

  resources :posts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
