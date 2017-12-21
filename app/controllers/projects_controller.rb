class ProjectsController < ApplicationController

	def vijay

	end

    def submitproject
    	@project = Project.create(project_params)
    	redirect_to fff_path 
    end
     def all_projects
     	@projects = Project.all
     end
    def display_my_project
    	@aa = Project.find(params[:gh])
    end
    
    def remove_projects
    	@rm = Project.find(params[:rm])
    	@rm.destroy
    	redirect_to fff_path
    end
    private
    def project_params
    	params.require(:project).permit(:title,:description)
    end

end
