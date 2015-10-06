class Photo < ActiveRecord::Migration
  def change
  	create_table :users do | t |
  		t.integer :case_id
  		t.string :filename

  		t.timestamps null: false
  	end
  end
end
