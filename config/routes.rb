Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "sms#show"

  get '/sms', to: 'sms#show'
  post '/sms', to: 'sms#send_sms'
end
