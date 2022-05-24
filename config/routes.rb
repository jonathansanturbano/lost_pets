Rails.application.routes.draw do
  # As a user, I can see all the found pets
  get "pets", to: "pets#index"
  # As a user, I can add a pet I found
  get "pets/new", to: "pets#new", as: "new_pet"
  post "pets", to: "pets#create"
  # As a user, I can see details for a lost pet
  get "pets/:id", to: "pets#show", as: "pet"
  # As a user, I can mark a pet as found (update)
  get "pets/:id/edit", to: "pets#edit", as: "edit_pet"
  patch "pets/:id", to: "pets#update"
  # As a user, I can destroy a found pet from the platform
  delete "pets/:id", to: "pets#destroy"
end
