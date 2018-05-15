class CreateCompilerErrorMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :compiler_error_matches do |t|
      t.string :repo_name
      t.float :job_number
      t.string :regex_key
      t.string :segment
    end
  end
end
