Rails.application.routes.draw do

resources :artists, shallow: true do
  resources :songs, except: [:index]
end
resources :songs, only: [:index]
  resources :playlists
end


# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
