Rails.application.routes.draw do
  devise_for :profiles, :controllers => { :omniauth_callbacks => "profiles/omniauth_callbacks" }
  resources :profiles
  get 'welcome/index'

  get 'welcome/index'

  root 'welcome#index'
end
