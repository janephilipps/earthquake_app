Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }, path: '/', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: '',
    sign_up: 'signup'
  }

  root to: 'site#index'

  get '/about', to: 'site#about'

  get '/contact', to: 'site#contact'

  get '/earthquakes', to: 'site#earthquakes'

  resources :checklist_items

end
