class QuizMasterController < ApplicationController
  
before_action :authenticate_user!

	def home
		@user = current_user
	end

	def lvl
  		@user = current_user
  		@q = Qn.where("lvl=?",@user.lvl).limit(1).order("RANDOM()").take
  		session[:qid]=@q.id
  	end

  	def check
  		user = current_user
  		q=Qn.find(session[:qid])
  		if(params[:answer]==q.answer)
  			user.update_attribute(:score,user.score+1)
  			flash[:notice] = "Correct Answer :)"
  		else
  			flash[:notice] = "Wrong Answer :("
  		end
  		user.update_attribute(:lvl,user.lvl+1)
  		redirect_to  "http://localhost:3000/quiz"
  	end


  	def leaderboard
  		@user = User.order('score DESC').limit(10).take
    end
end
