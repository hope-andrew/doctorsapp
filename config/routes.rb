Rails.application.routes.draw do
  resources :doctor_specialties
  resources :specialties
  resources :doctors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
