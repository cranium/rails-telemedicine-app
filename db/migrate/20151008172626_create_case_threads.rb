class CreateCaseThreads < ActiveRecord::Migration
  def change
    create_table :case_threads do |t|
      t.text :title
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
