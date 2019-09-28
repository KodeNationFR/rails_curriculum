Rails.application.routes.draw do
  root to: "courses#index"
  resources :courses, path: :curriculums do 
    resources :steps, path: :modules
  end
end
