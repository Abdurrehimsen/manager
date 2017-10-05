class AddMgrToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :mgr, :boolean
  end
end
