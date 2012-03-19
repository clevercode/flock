Flock::Application.routes.draw do
  root to: "high_voltage/pages#show", id: "home"

  devise_for :users

  # Omniauth
  match '/omniauth/twitter(/:username)', 
    to: redirect('/auth/twitter?screen_name=%{username}'),
    as: 'omniauth_twitter'
  match '/auth/twitter/callback', 
    to: 'authentications#create'

  resources :teams do
    resources :accounts
  end

end
