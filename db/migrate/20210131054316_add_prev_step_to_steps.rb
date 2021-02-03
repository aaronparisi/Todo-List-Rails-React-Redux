class AddPrevStepToSteps < ActiveRecord::Migration[5.2]
  def change
    add_reference :steps, :previousStep, index: true, foreign_key: { to_table: :steps }
  end
end
