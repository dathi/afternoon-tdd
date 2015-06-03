Rails.application.routes.draw do
  resources :books, :only => [:new]
end
