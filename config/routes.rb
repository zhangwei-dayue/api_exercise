Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, :defaults => { :format => :json } do
    namespace :v1 do
      get "/reservations" => "reservations#index", :as => :reservations
      get "/trains"  => "trains#index", :as => :trains
      get "/trains/:train_number" => "trains#show", :as => :train

      get "/reservations/:booking_code" => "reservations#show", :as => :reservation
      post "/reservations" => "reservations#create", :as => :create_reservations
      patch "/reservations/:booking_code" => "reservations#update", :as => :update_reservation
      delete "/reservations/:booking_code" => "reservations#destroy", :as => :cancel_reservation
    end
  end

  root "welcome#index"
end
