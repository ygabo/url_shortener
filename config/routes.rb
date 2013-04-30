UrlShortener::Application.routes.draw do

  resources :links

  authenticated :user do
    root :to => "links#new"
  end
  root :to => "links#new"
  devise_for :users
  resources :users

  match '/:link_in' => 'links#redirect_me'
end