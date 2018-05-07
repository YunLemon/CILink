class TravisJavaRepository < ActiveRecord::Base
  has_many :java_repo_build_data, :foreign_key => "repo_name"
end