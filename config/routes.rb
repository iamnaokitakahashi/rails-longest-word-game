Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post '/score', to: 'games#score', as: 'score'
  get '/new', to: 'games#new', as: 'new'
  # Defines the root path route ("/")
  # root "articles#index"
end
