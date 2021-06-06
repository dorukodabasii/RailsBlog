Rails.application.routes.draw do
  
  devise_for :authors
  get 'authors/posts/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "authors/posts#index"
  scope module: 'authors' do
    resources :posts
end
end
