class LogsController < ApplicationController
    def show
        job = JavaRepoBuildDatum.find(params[:job_id])
        match = job.compiler_error_matches
        render json: match
        #send_file "/home/fdse/user/zc/bodyLog2/build_logs/#{params[:repo].sub(/\//, '@')}/#{params[:job_number].sub(/\./, '@')}.log", type: 'text/plain; charset=utf-8', disposition: 'inline'
    end
end
