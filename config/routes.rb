Rails.application.routes.draw do
  namespace :v1, defaults: {format: "json"} do
    get "greetings", to: 'greetings#index'
  end
  get '*page', to: 'static#index', constraints: ->(req) do
   !req.xhr? && req.format.html?
 end
 root 'static#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end