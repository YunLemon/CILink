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

ActiveRecord::Schema.define(version: 20180609133338) do

  create_table "compiler_error_matches", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "repo_name"
    t.string "job_number", limit: 45
    t.integer "java_repo_build_datum_id"
    t.integer "order_number"
    t.string "regex_key"
    t.float "similarity", limit: 24
    t.text "segment", limit: 16777215, collation: "utf8mb4_bin"
  end

  create_table "compiler_error_mysql_matches", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "repo_name"
    t.string "job_number", limit: 45
    t.integer "java_repo_job_datum_id"
    t.integer "order_number"
    t.string "regex_key"
    t.string "regex_value", limit: 500
    t.float "similarity", limit: 24
    t.text "segment", limit: 16777215, collation: "utf8mb4_bin"
    t.index ["java_repo_job_datum_id"], name: "java_repo_job_datum_id_index"
    t.index ["repo_name", "job_number", "order_number"], name: "repo_job_order_index", unique: true
  end

  create_table "compiler_error_slice_bk", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "repo_name"
    t.string "job_number", limit: 45
    t.text "slice_segment", limit: 16777215, collation: "utf8mb4_bin"
    t.integer "has_compiler_error", limit: 1
  end

  create_table "compiler_error_slices", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "repo_name"
    t.string "job_number", limit: 45
    t.text "slice_segment", limit: 16777215, collation: "utf8mb4_bin"
    t.integer "has_compiler_error", limit: 1
    t.index ["repo_name", "job_number"], name: "repo_job", unique: true
  end

  create_table "java_repo_build_data", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin" do |t|
    t.string "repo_name"
    t.string "build_number", limit: 45
    t.string "build_state", limit: 45
    t.integer "build_id"
    t.integer "travis_java_repository_id"
    t.integer "build_duration"
    t.string "build_event_type", limit: 45
    t.string "build_previous_state", limit: 45
    t.text "pull_request_title", limit: 16777215
    t.integer "pull_request_number"
    t.datetime "build_started_at"
    t.datetime "build_finished_at"
    t.string "build_branch"
    t.string "build_tag"
    t.text "build_stages", limit: 16777215
    t.datetime "build_updated_at"
    t.integer "created_by_id"
    t.string "created_by_login"
    t.integer "commit_id"
    t.string "commit_sha", limit: 45
    t.string "commit_ref"
    t.text "commit_message", limit: 16777215
    t.string "commit_compare_url"
    t.datetime "commit_committed_at"
    t.integer "jobs_number"
    t.integer "has_compiler_error", limit: 1
    t.index ["id"], name: "id_UNIQUE", unique: true
    t.index ["repo_name", "build_number"], name: "repo_build_index"
    t.index ["travis_java_repository_id"], name: "travis_java_repository_index"
  end

  create_table "java_repo_build_data_bk", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin" do |t|
    t.string "repo_and_job", null: false
    t.string "repo_name"
    t.string "job_number", limit: 45
    t.integer "travis_java_repository_id"
    t.integer "job_id"
    t.string "job_allow_failure", limit: 45
    t.string "job_state", limit: 45
    t.datetime "job_started_at"
    t.datetime "job_finished_at"
    t.string "job_queue"
    t.string "job_stage"
    t.datetime "job_created_at"
    t.datetime "job_updated_at"
    t.integer "commit_id"
    t.string "commit_sha", limit: 45
    t.string "commit_ref"
    t.text "commit_message", limit: 16777215
    t.string "commit_compare_url"
    t.datetime "commit_committed_at"
    t.integer "build_id"
    t.string "build_number", limit: 45
    t.string "build_state", limit: 45
    t.integer "build_duration"
    t.string "build_event_type", limit: 45
    t.text "pull_request_title", limit: 16777215
    t.integer "pull_request_number"
    t.datetime "build_started_at"
    t.datetime "build_finished_at"
    t.string "build_branch"
    t.string "build_tag"
    t.text "build_stages", limit: 16777215
    t.integer "created_by_id"
    t.string "created_by_login"
    t.datetime "build_updated_at"
    t.integer "has_compiler_error", limit: 1
    t.text "slice_segment", limit: 16777215
    t.index ["id"], name: "id_UNIQUE", unique: true
    t.index ["repo_name", "job_number"], name: "repo_job", unique: true
  end

  create_table "java_repo_job_data", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin" do |t|
    t.string "repo_and_job", null: false
    t.string "repo_name"
    t.string "job_number", limit: 45
    t.integer "travis_java_repository_id"
    t.integer "job_id"
    t.string "job_allow_failure", limit: 45
    t.string "job_state", limit: 45
    t.datetime "job_started_at"
    t.datetime "job_finished_at"
    t.string "job_queue"
    t.string "job_stage"
    t.datetime "job_created_at"
    t.datetime "job_updated_at"
    t.integer "commit_id"
    t.string "commit_sha", limit: 45
    t.string "commit_ref"
    t.text "commit_message", limit: 16777215
    t.string "commit_compare_url"
    t.datetime "commit_committed_at"
    t.integer "build_id"
    t.string "build_number", limit: 45
    t.string "build_state", limit: 45
    t.integer "build_duration"
    t.string "build_event_type", limit: 45
    t.text "pull_request_title", limit: 16777215
    t.integer "pull_request_number"
    t.datetime "build_started_at"
    t.datetime "build_finished_at"
    t.string "build_branch"
    t.string "build_tag"
    t.text "build_stages", limit: 16777215
    t.integer "created_by_id"
    t.string "created_by_login"
    t.datetime "build_updated_at"
    t.integer "has_compiler_error", limit: 1
    t.text "slice_segment", limit: 16777215
    t.index ["id"], name: "id_UNIQUE", unique: true
    t.index ["repo_name", "build_number"], name: "repo_build_index"
    t.index ["repo_name", "job_number"], name: "repo_job", unique: true
    t.index ["travis_java_repository_id"], name: "travis_java_repository_id_index"
  end

  create_table "match_results", primary_key: "regex_key", id: :string, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "num"
  end

  create_table "regular_expressions", primary_key: "regex_key", id: :string, limit: 500, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "regex_value", limit: 600
    t.integer "job_number"
  end

  create_table "time_costs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "pre"
    t.string "now"
    t.text "next"
    t.string "fix"
    t.integer "travis_java_repository_id"
    t.float "cost", limit: 24
    t.string "repo_name"
  end

  create_table "travis_java_repositories", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string "repo_name", null: false
    t.integer "stars"
    t.integer "builds"
    t.integer "has_compiler_error", limit: 1
    t.index ["repo_name"], name: "repo_name_UNIQUE", unique: true
  end

  create_table "travis_java_repositories_before_delete_dup", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string "repo_name"
    t.integer "stars"
    t.integer "builds"
  end

end
