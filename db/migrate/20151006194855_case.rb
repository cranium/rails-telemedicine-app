class Case < ActiveRecord::Migration
  def change
  	create_table :cases do | t |
  		t.integer :user_id
  		t.text :symptomtext

  		t.timestamps null: false
  	end
  end
end
