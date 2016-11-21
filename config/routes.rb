Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root to: 'dashboard#show'

  get 'results' => 'dashboard#results', as: :results
  get 'vote' => 'votes#new', as: :new_vote
  get 'register' => 'registration#new', as: :new_ballot
  post 'register' => 'registration#create', as: :ballots
  get 'verify/check_text' => 'registration#check_text', as: :check_text
  patch 'vote/cast' => 'votes#cast', as: :ballot
  get 'verify/:token' => 'registration#verify', as: :verification

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
