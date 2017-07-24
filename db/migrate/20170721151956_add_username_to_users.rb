class AddUsernameToUsers < ActiveRecord::Migration[5.1]
  def change
    #added create_table :users
    #create_table :users
    #add_column :user, :username, :string
    add_index :user, :username, unique: true
  end
end
