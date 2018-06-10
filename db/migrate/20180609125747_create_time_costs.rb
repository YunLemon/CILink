class CreateTimeCosts < ActiveRecord::Migration[5.1]
  def change
    create_table :time_costs do |t|
      t.string :pre
      t.string :now
      t.text :next, array: true
      t.string :fix
      t.integer :travis_java_repository_id
    end
  end
end
