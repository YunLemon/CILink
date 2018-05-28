class TravisJavaRepository < ActiveRecord::Base
  has_many :java_repo_job_data
end