class AddEmailColumn < ActiveRecord::Migration
  def change
    add_column :users, :email, :string
  end

  def down
    remove_column :users, :email
  end
end
