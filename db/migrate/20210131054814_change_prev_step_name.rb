class ChangePrevStepName < ActiveRecord::Migration[5.2]
  def change
    rename_column :steps, :previousStep_id, :previous_step_id
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
