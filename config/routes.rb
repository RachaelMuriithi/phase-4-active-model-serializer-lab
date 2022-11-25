Rails.application.routes.draw do
  resources :tags, only: [:index, :show]
  resources :posts, only: [:index, :show]
  resources :authors, only: [:index, :show]
  # get '/post/:id/post', to: 'posts#post'
  # get '/post_posts', to: 'posts#posts'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
