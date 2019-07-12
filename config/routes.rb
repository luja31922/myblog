Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#home'
  resources :countries do
    resources :cities

  end
resources :articles
get '/admin_panel', to: 'welcome#admin_panel', as: :admin_panel
get '/country_articles', to: 'countries#articles_by_country', as: :articles_country
end
