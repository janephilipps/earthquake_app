Rails.application.routes.draw do
  root to: 'site#index'

  get '/about', to: 'site#about'

  get '/contact', to: 'site#contact'

end
