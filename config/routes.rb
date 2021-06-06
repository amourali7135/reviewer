Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Indices for services, feedback, perks, or just show on business show page?
  resources :businesses, except: :destroy, :path => 'businesses' do
    resources :services, :path => 'service'
    resources :feedbacks, :path => 'customer_feedback'
    resources :perks, except: :index #Perks in area?
    resources :reviews, except: :index
    resources :projects, except: :index
    #singular resource for verification_qr?  Had no idea.  try it...
    resource :verificationqr, only: [:show, :create], :path => 'verification_qr_code' #Oh wait...lock it to owner only.
    resources :interactionverifications, only: [ :show, :create] #:path => 'customers_interacted_with'
    get 'validation', to: 'interactionverifications#create', as: 'qr_verification_validation'
  end

  #Wtf is this array?  I dont' even remember.  Got from Creaze.
  resources :services, only: [], :path => 'services' do
  end

  resources :users, except: [:index ] do #Index necessary?
    resources :redemptions, only: [:show, :create, :update]
    resources :recommendationslists
    # resources :verificationqrs, only: [:index, :update], :path =>'verified_interactions' #Fix this up with views.
    resources :userqrs, only: [:index, :create, :update, :show], :path => 'verified_feedback_or_reviews'
    resources :interactionverifications, only: [:index], :path => 'verified_interactions'
  end

  get 'about', to: 'pages#about', as: 'about'
  get 'explore', to: 'pages#explore', as: 'explore'
  get "help", to: "pages#help", as: 'help'
  get 'contact', to: 'pages#contact', as: 'contact'
  get 'business_dashboard', to: 'pages#business_dashboard', as: 'business_dashboard'
  get 'user_dashboard', to: 'pages#user_dashboard', as: 'user_dashboard'
  get 'following', to: 'pages#following', as: 'following'
  get 'followers', to: 'pages#followers', as: 'followers'
  get 'liked', to: 'pages#liked', as: 'liked'
  get 'team', to: 'pages#team', as: 'team'
  get 'career', to: 'pages#career', as: 'career'
  get 'updates', to: 'pages#updates', as: 'updates'
  get 'blog', to: 'pages#blog', as: 'blog'
end
