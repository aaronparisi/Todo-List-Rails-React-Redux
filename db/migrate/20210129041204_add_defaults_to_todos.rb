class AddDefaultsToTodos < ActiveRecord::Migration[5.2]
  def change
    change_column :todos, :detailsShowing, :boolean, default: true
    change_column :todos, :done, :boolean, default: false
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
