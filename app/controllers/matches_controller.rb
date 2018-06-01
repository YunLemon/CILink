class MatchesController < ApplicationController
    def index
        @job = JavaRepoJobDatum.find(params[:job_id])
        @matches = @job.compiler_error_mysql_matches
    end
end
