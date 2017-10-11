Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users

  root to: 'application#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
