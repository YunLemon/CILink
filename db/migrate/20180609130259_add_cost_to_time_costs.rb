class AddCostToTimeCosts < ActiveRecord::Migration[5.1]
  def change
    add_column :time_costs, :cost, :integer
  end
end
