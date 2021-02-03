class RemoveOrderFromSteps < ActiveRecord::Migration[5.2]
  def change
    remove_column :steps, :order
  end
end
