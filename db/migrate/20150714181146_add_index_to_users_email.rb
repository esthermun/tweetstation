class AddIndexToUsersEmail < ActiveRecord::Migration
  def change
  	
  	add_index :users, :email, unique: true 
  	# database wants unique: not uniqueness - in data migration,
  	# it's telling it that all emails have to be unique - no duplicates

  end
end
