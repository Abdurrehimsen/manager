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

  resources :unit_lists do
    resources :unit_list_lines
  end

  resources :data_lists do
    resources :data_list_lines
  end

  resources :mode_lists do
    resources :mode_list_lines
  end

  resources :reagent_lists do
    resources :reagent_list_lines
  end
  

end
