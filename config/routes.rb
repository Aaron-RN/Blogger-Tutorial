Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :articles do
    resources :comments
    resources :attachments
  end
  resources :tags
  resources :authors
  resources :author_sessions, only: %i[new create destroy]

  get 'login'  => 'author_sessions#new'
  get 'logout' => 'author_sessions#destroy'
  root to: 'articles#index'
end
