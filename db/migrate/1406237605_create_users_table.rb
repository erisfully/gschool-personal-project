class CreateUsersTable < ActiveRecord::Migration
    def up
      create_table :users do |t|
        t.string  :users
        t.string  :password
      end
    end

    def down
      drop_table :messages
    end
  end