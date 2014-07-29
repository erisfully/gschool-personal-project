class ChangeUsersColumn < ActiveRecord::Migration
  def change
    rename_column :users, :users, :username
  end

  def down
    # add reverse migration code here
  end
end
