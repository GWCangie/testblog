Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  

  resources :users
  resources :articles do
    resources :comments
  end
  
  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#match 'dashboard' => 'welcome#index', :as => 'user_root'


authenticated :user do
  root to: 'welcome#index', as: :authenticated_root

end
root to: 'registrations#edit'

end