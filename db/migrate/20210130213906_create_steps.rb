class CreateSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :steps do |t|
      t.string :title, null: false
      t.integer :order, null: false
      t.boolean :done, null: false, default: false
      t.references :todo, foreign_key: true

      t.timestamps
    end
  end
end
