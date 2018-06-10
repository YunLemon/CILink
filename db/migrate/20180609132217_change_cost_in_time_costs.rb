class ChangeCostInTimeCosts < ActiveRecord::Migration[5.1]
  def change
    change_column :time_costs, :cost, :float
  end
end
