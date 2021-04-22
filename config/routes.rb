Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Indices for services, feedback, perks, or just show on business show page?
  resources :businesses, except: :destroy, :path => 'businesses' do
    resources :services, :path => 'service'
    resources :feedbacks, :path => 'customer_feedback'
    resources :perks, except: :index
    resources :reviews, except: :index
    resources :verification_qrs, only: [:show, :create], :path => 'QR_Verification' #Oh wait...lock it to owner only.
  end

  #Wtf is this array?  I dont' even remember.  Got from Creaze.
  resources :services, only: [], :path => 'services' do
  end

  resources :users, only: [:show] do
    resources :redemptions, only: [:show]
    resources :recommendationslists
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
