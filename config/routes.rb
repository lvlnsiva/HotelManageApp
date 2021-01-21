Rails.application.routes.draw do
  devise_for :users


  resources :services

  get "home/index", :as => "user_root"

  get "home/login"

  get "home/send_report"

  put "checkins/split_room" => "checkins#split_room", :as => "split_room"

  get "/checkout/:id" => "checkins#checkout"

  resources :checkins

  resources :rooms

  resources :room_types

  resources :guests
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
