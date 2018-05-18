class JobsController < ApplicationController
    def index
        repo = TravisJavaRepository.find(params[:repository_id])
        branch = params[:branch]
        if branch
        @jobs = repo.java_repo_build_data.where("build_branch = ?", branch).paginate(:page => params[:page], :per_page => 100).order('job_id')
        else
        @jobs = repo.java_repo_build_data.paginate(:page => params[:page], :per_page => 100).order('job_id')
        end
    end
end
