class TravisJavaRepository < ActiveRecord::Base
  has_many :java_repo_build_data
end