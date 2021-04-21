Rails.application.routes.draw do
  get 'reviews/index'
  get 'reviews/new'
  get 'reviews/create'
  get 'reviews/show'
  get 'reviews/update'
  get 'reviews/destroy'
  get 'reviews/edit'
  get 'perks/index'
  get 'perks/new'
  get 'perks/create'
  get 'perks/show'
  get 'perks/update'
  get 'perks/destroy'
  get 'perks/edit'
  get 'feedbacks/index'
  get 'feedbacks/new'
  get 'feedbacks/create'
  get 'feedbacks/show'
  get 'feedbacks/update'
  get 'feedbacks/destroy'
  get 'feedbacks/edit'
  get 'services/index'
  get 'services/new'
  get 'services/create'
  get 'services/show'
  get 'services/update'
  get 'services/destroy'
  get 'services/edit'
  get 'businesses/index'
  get 'businesses/new'
  get 'businesses/create'
  get 'businesses/show'
  get 'businesses/update'
  get 'businesses/destroy'
  get 'businesses/edit'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Indices for services, feedback, perks, or just show on business show page?
  resources :businesses, :path => 'businesses' do
    resources :services, :path => 'service'
    resources :feedbacks, :path => 'customer_feedback'
    resources :perks, except: :index
    resources :reviews, except: :index
    resources :verification_qrs, only: :show, :path => 'QR_Verification' #Oh wait...lock it.
  end

    #Wtf is this array?  I dont' even remember.  Got from Creaze.
  resources :services, only: [] do
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
