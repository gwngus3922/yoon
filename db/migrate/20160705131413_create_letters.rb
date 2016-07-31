class CreateLetters < ActiveRecord::Migration
  def change
    create_table :letters do |t|
    t.string:username
    t.string:title
    t.text:contents
    
      t.timestamps null: false
    end
  end
end
