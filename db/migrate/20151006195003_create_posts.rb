class CreatePosts < ActiveRecord::Migration
  def change
  	create_table :posts do | t |
  		t.integer :case_thread_id
  		t.integer :user_id
  		t.text :posttext

  		t.timestamps null: false
  	end
  end
end
