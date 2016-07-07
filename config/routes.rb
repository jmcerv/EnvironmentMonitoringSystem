Rails.application.routes.draw do

resources :rules

root 'menu#index'
end
