Rails.application.routes.draw do
  mount Split::Dashboard, at: 'split'

  root to: 'articles#index'

  get '/perform_action' => 'articles#perform_action', as: :perform_action
  resources :articles
end
