class RepositoryController < ApplicationController
  def index
    @builds=params[:builds]
    @stars=params[:stars]
    if @builds && @stars && @builds =~ /^\d+$/ && @stars =~ /^\d+$/
      @repo = TravisJavaRepository.where("id >= ? AND builds > ? AND stars>?", 1, @builds.to_i, @stars.to_i).paginate(:page => params[:page], :per_page => 30)
    else
      @repo = TravisJavaRepository.where("id >= ? AND builds > ? AND stars>?", 1, 50, 25).paginate(:page => params[:page], :per_page => 30)
    end
  end
  def log
    #send_file '/Users/zhangchen/projects/bodyLog2/build_logs/cucumber@cucumber-jvm/1035@1.log', type: 'text/plain; charset=utf-8', disposition: 'inline'
    render plain: params[:repo]
  end
end
