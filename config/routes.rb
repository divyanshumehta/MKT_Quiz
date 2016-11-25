Rails.application.routes.draw do
  get 'quiz' => 'quiz_master#lvl'
  post 'quiz' => 'quiz_master#check'
  get 'leaderboard' => 'quiz_master#leaderboard'

  get 'admin' => 'admin#home'
  get 'view_q' => 'admin#view_q'
  get 'del_q' => 	'admin#del_q'
  get 'add_q' => 'admin#add_q'
  post 'add_q' => 'admin#create_q'

  root 'quiz_master#home'

  #devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  devise_for :users, :controllers => { :omniauth_callbacks => "user/omniauth_callbacks"}#,:registrations =>"user/registrations"}
end
