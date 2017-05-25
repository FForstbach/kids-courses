Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  authenticate :user do
    resources 'bookings', only: [:index, :show, :new, :create, :destroy]
  end
  resources 'courses'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
