class MatchesController < ApplicationController
    def index
        @job = JavaRepoJobDatum.find(params[:job_id])
        repo_name = @job.repo_name
        job_number = @job.job_number
        @slice_segment = @job.slice_segment.lines
        @log_file = IO.readlines "/home/fdse/user/zc/bodyLog2/build_logs/#{repo_name.sub(/\//, '@')}/#{job_number.sub(/\./, '@')}.log"
        @matches = @job.compiler_error_mysql_matches
    end
end
