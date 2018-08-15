Rails.application.routes.draw do
  get 'messages/hello'
  get 'messages/goodbye'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "/", to: "static#home"
  root "static#home"
  get "/hello/:name", to: "messages#hello"
  get "/goodbye/:name", to: "messages#goodbye"


end
