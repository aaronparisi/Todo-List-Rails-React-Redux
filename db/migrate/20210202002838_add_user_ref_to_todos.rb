class AddUserRefToTodos < ActiveRecord::Migration[5.2]
  def change
    add_reference :todos, :user, index: true, foreign_key: { to_table: :users }
  end
end
