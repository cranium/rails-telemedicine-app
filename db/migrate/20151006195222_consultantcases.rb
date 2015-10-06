class Consult < ActiveRecord::Migration
  def change
  	create_table :consults do | t |
  		t.integer :user_id
  		t.integer :case_id

  		t.timestamps null: false
  	end
  end
end
