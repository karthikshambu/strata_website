FmWebsite::Application.routes.draw do

  root :to => "home#index"
  resources :home do
    collection do
      get :index
      post :send_sms
    end
  end

end
