Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index' # make welcome#index the default root page

  resources :authors, :collections, :languages, :media, :translators, :works
  resources :submissions

  # For details on the DSL available within this file, see
  # http://guides.rubyonrails.org/routing.html
end
