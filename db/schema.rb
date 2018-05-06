# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  create_table "all_repository_github", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "id"
    t.string "reponame"
    t.string "language"
    t.integer "stars"
    t.integer "builds"
  end

  create_table "java_repo_build_data", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin" do |t|
    t.string "repo_name"
    t.integer "job_id"
    t.string "job_allow_failure", limit: 45
    t.float "job_number", limit: 24
    t.string "job_state", limit: 45
    t.string "job_started_at", limit: 45
    t.string "job_finished_at", limit: 45
    t.string "job_queue"
    t.string "job_stage"
    t.string "job_created_at", limit: 45
    t.string "job_updated_at", limit: 45
    t.integer "commit_id"
    t.string "commit_sha", limit: 45
    t.string "commit_ref"
    t.text "commit_message", limit: 16777215
    t.string "commit_compare_url"
    t.string "commit_committed_at", limit: 45
    t.integer "build_id"
    t.string "build_number", limit: 45
    t.string "build_state", limit: 45
    t.integer "build_duration"
    t.string "build_event_type", limit: 45
    t.string "pull_request_title"
    t.integer "pull_request_number"
    t.string "build_started_at", limit: 45
    t.string "build_finished_at", limit: 45
    t.string "build_branch"
    t.string "build_tag"
    t.string "build_stages"
    t.integer "created_by_id"
    t.string "created_by_login"
    t.string "build_updated_at", limit: 45
  end

  create_table "repository", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "id"
    t.string "reponame"
    t.integer "stars"
    t.integer "builds"
  end

  create_table "travis0", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "repo_name"
    t.integer "repo_id"
    t.integer "build_id"
    t.integer "build_number"
    t.string "build_state", limit: 45
    t.integer "build_duration"
    t.string "build_event_type", limit: 45
    t.string "pull_request_title"
    t.integer "pull_request_number"
    t.string "build_started_at", limit: 45
    t.string "build_finished_at", limit: 45
    t.string "branch"
    t.string "tag"
    t.integer "commit_id"
    t.string "commit_sha"
    t.string "commit_ref"
    t.string "commit_message", limit: 10000
    t.string "commit_compare_url"
    t.string "commit_committed_at", limit: 45
    t.integer "created_id"
    t.string "created_login"
    t.string "build_updated_at", limit: 45
    t.integer "job_id"
    t.string "job_allow_failure", limit: 45
    t.integer "job_number"
    t.string "job_state", limit: 45
    t.string "job_started_at", limit: 45
    t.string "job_finished_at", limit: 45
    t.string "job_queue"
    t.string "job_created_at", limit: 45
    t.string "job_updated_at", limit: 45
  end

  create_table "travis_java_repositories", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string "repo_name"
    t.integer "stars"
    t.integer "builds"
  end

  create_table "travis_java_repositories_delete", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string "repo_name"
    t.integer "stars"
    t.integer "builds"
  end

  create_table "travis_single_thread_java_repositories", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string "repo_name"
    t.integer "stars"
    t.integer "builds"
  end

end
