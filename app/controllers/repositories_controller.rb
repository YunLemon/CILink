class RepositoriesController < ApplicationController
  def index    
    @builds = params[:builds] || 50
    @stars = params[:stars] || 25
    @search_text = params[:search_text]
    if @search_text
      @repo = TravisJavaRepository.where("(repo_name LIKE ? OR id = ?) AND id >= ? AND builds > ? AND stars>?", '%' + @search_text + '%', @search_text, 1,  @builds.to_i, @stars.to_i).paginate(:page => params[:page], :per_page => 30).order('id')
    else
      @repo = TravisJavaRepository.where("id >= ? AND builds > ? AND stars>?", 1, @builds.to_i, @stars.to_i).paginate(:page => params[:page], :per_page => 30).order('id')
    end       
  end
end
