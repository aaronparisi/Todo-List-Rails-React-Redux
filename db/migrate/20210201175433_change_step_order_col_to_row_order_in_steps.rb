class ChangeStepOrderColToRowOrderInSteps < ActiveRecord::Migration[5.2]
  def change
    rename_column :steps, :step_order, :row_order
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
