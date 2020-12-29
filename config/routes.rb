Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'create_user#new'
  # post '/person_pass' => 'person_pass#create'
  resources :person_pass, :create_user
end
