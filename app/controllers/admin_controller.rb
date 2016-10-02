class AdminController < ApplicationController

before_action :verify_admin

	def view_q
		@q=Qn.all
	end

	def add_q
		
	end

	def create_q
		q = Qn.new
		q.question = params[:qn][:question]
		q.answer = params[:qn][:answer]
		q.lvl = params[:qn][:lvl]
		q.save
		redirect_to "/admin"
	end

	def del_q
		q = Qn.find(params[:del_qid])
		q.destroy
		redirect_to admin_url

	end

	def home
	end




	def verify_admin
		user = current_user
		unless user.admin?
			redirect_to root_path
		end
	end
end
