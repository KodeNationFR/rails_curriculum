Rails.application.routes.draw do
  get 'pages/index'
  get 'pages/about'
  get 'pages/legal'
  get 'pages/privacy'
  root to: "courses#index"
  resources :courses, path: :curriculums
  resources :steps, path: :modules

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
