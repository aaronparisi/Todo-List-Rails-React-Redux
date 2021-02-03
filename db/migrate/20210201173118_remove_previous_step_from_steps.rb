class RemovePreviousStepFromSteps < ActiveRecord::Migration[5.2]
  def change
    remove_index :steps, column: :previous_step_id
    remove_column :steps, :previous_step_id
  end
end
