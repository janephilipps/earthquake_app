Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'sessions'
  }

  root to: 'site#index'

  get '/about', to: 'site#about'

  get '/contact', to: 'site#contact'

end
