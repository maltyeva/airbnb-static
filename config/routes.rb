Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root to: "flats#index"
  # {
  #   id: 154
  # }

  #VERB 'path', to: "controller#action", as: :prefix
  get '/flats/:id', to: "flats#show", as: :flat
  get '/', to: "flats#index", as: :home
end
