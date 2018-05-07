class RepositoryController < ApplicationController
  def index
    @builds = params[:builds] || 50
    @stars = params[:stars] || 25
    @repo_name = params[:repo_name]
    if @repo_name
      @repo = TravisJavaRepository.where("repo_name LIKE ? AND repo_id >= ? AND builds > ? AND stars>?", '%' + @repo_name + '%', 1,  @builds.to_i, @stars.to_i).paginate(:page => params[:page], :per_page => 30).order('repo_id')
    else
      @repo = TravisJavaRepository.where("repo_id >= ? AND builds > ? AND stars>?", 1, @builds.to_i, @stars.to_i).paginate(:page => params[:page], :per_page => 30).order('repo_id')
    end
  end

  def jobs
    #send_file '/Users/zhangchen/projects/bodyLog2/build_logs/cucumber@cucumber-jvm/1035@1.log', type: 'text/plain; charset=utf-8', disposition: 'inline'
    #render plain: params[:repo]
    repo = TravisJavaRepository.find(params[:repo])
    @jobs = repo.java_repo_build_data.paginate(:page => params[:page], :per_page => 30).order('job_number')
  end

  def log
    send_file "/home/fdse/user/zc/bodyLog2/build_logs/#{params[:repo].sub(/\./, '@')}/job@#{params[:job_number].sub(/\./, '@')}.log", type: 'text/plain; charset=utf-8', disposition: 'inline'
  end
end
