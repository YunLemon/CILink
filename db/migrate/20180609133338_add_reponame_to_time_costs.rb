class AddReponameToTimeCosts < ActiveRecord::Migration[5.1]
  def change
    add_column :time_costs, :repo_name, :string
  end
end
