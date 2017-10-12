Rails.application.routes.draw do

  resources :programs
  root 'welcome#index'


  devise_for :users


  resources :programs do
	resources :analytes
  end

  resources :data_lists
  resources :unit_lists
  resources :mode_lists
  resources :reagent_lists
  

end
