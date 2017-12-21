class CommentsController < ApplicationController

	def createcomment
		@pro = Project.find(params[:comment][:my_project_id])
		@comment = @pro.comments.create(body: params[:comment][:body])
		redirect_to display_my_path(gh: @pro.id)
	end
end
