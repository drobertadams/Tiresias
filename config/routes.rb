Rails.application.routes.draw do
  get 'user_sessions/new'

  get 'users/new'

  get 'users/edit'

  get 'welcome/index'
  root 'welcome#index' # make welcome#index the default root page

  resources :authors, :collections, :languages, :media, :translators, :works
  resources :submissions

  # Add users as a RESTful resource.
  resources :users

  # Add user_sessions as a RESTful resource and set up a couple of
  # URL-friendly routes.
  resources :user_sessions
  get 'login', to: 'user_sessions#new'
  get 'logout', to: 'user_sessions#destroy'
  #map.login 'login', :controller => 'user_sessions', :action => 'new'
  #map.logout 'logout', :controller => 'user_sessions', :action => 'destroy'

  # For details on the DSL available within this file, see
  # http://guides.rubyonrails.org/routing.html
end
