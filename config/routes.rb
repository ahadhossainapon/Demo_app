Rails.application.routes.draw do


  root to: "home#index"

  resources :klasses do
    member do
      get :teachers
      get :add_teacher
      post :save_teacher
    end
  end

  resources :subjects
  resources :teachers do
    member do
      get :subjects
      get :add_subjects
      post :save_subject
    end
  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
