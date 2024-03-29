Treebook::Application.routes.draw do


  get "dashboard/index"

  resources :lives


  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  resources :articles do 
    resources :comments
  end
  
  match 'announcements/:id/hide', to: 'announcements#hide', as: 'hide_announcement'

  resources :videos do
    resources :comments
  end


  get "videos/index"
  get 'tags/:tag', to: 'blogs#index', as: :tag
  get 'tags/:tag', to: 'videos#index', as: :tag
  get 'tags/:tag', to: 'articles#index', as: :tag
  
  
  root to: "welcome#index"
  
  
  resources :blogs do
    resources :comments
  end
  
  resources :categories, :except => [:index, :show]
  resources :forums, :except => :index do
    resources :topics, :shallow => true, :except => :index do
      resources :posts, :shallow => true, :except => [:index, :show]
    end
    root :to => 'categories#index', :via => :get
  end

  resources :activities, only: [:index]

  as :user do
    get '/register', to: 'devise/registrations#new', as: :register
    get '/login', to: 'devise/sessions#new', as: :login
    get '/logout', to: 'devise/sessions#destroy', as: :logout
  end

  devise_for :users, skip: [:sessions]
  
  as :user do
    get "/login" => 'devise/sessions#new', as: :new_user_session
    post "/login" => 'devise/sessions#create', as: :user_session
    delete "/logout" => 'devise/sessions#destroy', as: :destroy_user_session
  end

  resources :user_friendships do
    member do
      put :accept
      put :block
    end
  end

  resources :statuses
  get 'feed', to: 'statuses#index', as: :feed
  

  scope ":profile_name" do
    resources :albums do
      resources :pictures
    end
  end

  get '/:id', to: 'profiles#show', as: 'profile'

end
