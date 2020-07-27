Rails.application.routes.draw do
  get "/", to: "flats#index", as: :flats
  # /flats/145 -> flat["id"] = 145
  get "/flats/:id", to: "flats#show", as: :flat
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
