class CreateCompilerErrorSlices < ActiveRecord::Migration[5.1]
  def change
    create_table :compiler_error_slices do |t|
      t.string :repo_name
      t.float :job_number
      t.string :slice
    end
  end
end
