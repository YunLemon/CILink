class RepositoryController < ApplicationController
  def index
    @builds = params[:builds] || 50
    @stars = params[:stars] || 25
    @repo_name = params[:repo_name]
    if @repo_name
      @repo = TravisJavaRepository.where("repo_name LIKE ? AND id >= ? AND builds > ? AND stars>?", '%' + @repo_name + '%', 1,  @builds.to_i, @stars.to_i).paginate(:page => params[:page], :per_page => 30).order('id')
    else
      @repo = TravisJavaRepository.where("id >= ? AND builds > ? AND stars>?", 1, @builds.to_i, @stars.to_i).paginate(:page => params[:page], :per_page => 30).order('id')
    end

  end

  def jobs
    repo = TravisJavaRepository.find(params[:repo_id])
    branch = params[:branch]
    if branch
      @jobs = repo.java_repo_build_data.where("build_branch = ?", branch).paginate(:page => params[:page], :per_page => 100).order('job_id')
    else
      @jobs = repo.java_repo_build_data.paginate(:page => params[:page], :per_page => 100).order('job_id')
    end

  end

  def log
    send_file "/home/fdse/user/zc/bodyLog2/build_logs/#{params[:repo].sub(/\//, '@')}/#{params[:job_number].sub(/\./, '@')}.log", type: 'text/plain; charset=utf-8', disposition: 'inline'
  end
end
