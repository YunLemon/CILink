class JobsController < ApplicationController
    def index
        @repo = TravisJavaRepository.find(params[:repository_id])
        sift = params[:sift]
        branch = params[:branch]
        search_text = params[:search_text]
        if sift
            @jobs = @repo.java_repo_job_data.where("has_compiler_error = ?", 1).paginate(:page => params[:page], :per_page => 30).order('job_id')
        elsif branch
            @jobs = @repo.java_repo_job_data.where("build_branch = ?", branch).paginate(:page => params[:page], :per_page => 30).order('job_id')
        elsif search_text
            @jobs = @repo.java_repo_job_data.where("job_number = ?", search_text).paginate(:page => params[:page], :per_page => 30).order('job_id')
        else
            @jobs = @repo.java_repo_job_data.paginate(:page => params[:page], :per_page => 30).order('job_id')
        end

    end
end
