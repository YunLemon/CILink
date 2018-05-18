class JavaRepoBuildDatum < ActiveRecord::Base
  belongs_to :travis_java_repository
  has_many :compiler_error_match
end