class CreateMailLists < ActiveRecord::Migration
  def change
    create_table :mail_lists do |t|
      
      t.string "email"
      t.string "title"
      t.text "content"      

      t.timestamps null: false
    end
  end
end
