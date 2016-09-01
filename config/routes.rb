Rails.application.routes.draw do
  get 'quiz' => 'quiz_master#lvl'
  post 'quiz' => 'quiz_master#check'
  get 'leaderboard' => 'quiz_master#leaderboard'

  root 'quiz_master#home'

  #devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  devise_for :users, :controllers => { :registrations => "registrations" }
end
