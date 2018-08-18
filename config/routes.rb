Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  post 'valves' => 'valves#create'
  post 'sensors' => 'sensors#create'
  get 'devices' => 'devices#index'
  resources :users
end
