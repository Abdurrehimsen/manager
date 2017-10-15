Rails.application.routes.draw do

  resources :programs
  root 'welcome#index'


  devise_for :users


  resources :programs do
	 resources :analytes do
      resources :unit_lists
      resources :data_lists
      resources :mode_lists
      resources :reagent_lists
    end
  end

  
  

end
