class LogsController < ApplicationController
    def show
        @job = JavaRepoJobDatum.find(params[:job_id])
        repo_name = @job.repo_name
        job_number = @job.job_number
        @slice_segment = @job.slice_segment
        #render json: @job
        @log_file = IO.read "/home/fdse/user/zc/bodyLog2/build_logs/#{repo_name.sub(/\//, '@')}/#{job_number.sub(/\./, '@')}.log", type: 'text/plain; charset=utf-8', disposition: 'inline'
    end
end
