Rails.application.routes.draw do
  get 'core/index'

  mount Ckeditor::Engine => '/ckeditor'
  resources :posts do
  #->Prelang (voting/acts_as_votable)
  member do
    get "vote"
  end
end


  devise_for :users, controllers: {registrations: "users/registrations", sessions: "users/sessions", passwords: "users/passwords"}, skip: [:sessions, :registrations]
  devise_for :admin_users, ActiveAdmin::Devise.config
  
#  scope ':locale', defaults: { locale: I18n.locale } do
#    ActiveAdmin.routes(self)
#  end 

  ActiveAdmin.routes(self)
 
  root 'core#index'

 
  
  #->Prelang (user_login:devise/stylized_paths)
  devise_scope :user do
    get    "login"   => "users/sessions#new",         as: :new_user_session
    post   "login"   => "users/sessions#create",      as: :user_session
    delete "signout" => "users/sessions#destroy",     as: :destroy_user_session
    
    get    "signup"  => "users/registrations#new",    as: :new_user_registration
    post   "signup"  => "users/registrations#create", as: :user_registration
    put    "signup"  => "users/registrations#update", as: :update_user_registration
    get    "account" => "users/registrations#edit",   as: :edit_user_registration
  end

end