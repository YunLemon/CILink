class RepositoriesController < ApplicationController
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
end
