require 'domain_constraints'

Membership::Application.routes.draw do
  constraints(WebsiteDomain.new) do
    match '/' => 'website#index'
    match '/dashboard' => 'website#dashboard'
    match '/login' => 'sessions#new'
    match '/logout' => 'sessions#destroy'

    resources :courses, only: [:show]
    resources :events, only: [:show]
    resources :speakers, only: [:show]
  end

  constraints(ApplicationDomain.new) do
    match '/admin' => 'admin/admin#index'
    namespace :admin do
      match '/dashboard' => 'admin#dashboard'
      match '/login' => 'sessions#new'
      match '/logout' => 'sessions#destroy'

      resources :courses
      resources :events
      resources :sessions, only: [:create]
      resources :speakers
    end
  end

  root :to => 'errors#not_sure'
end
