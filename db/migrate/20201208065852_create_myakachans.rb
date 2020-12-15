class CreateMyakachans < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :user, foreign_key: true
    create_table :myakachans do |t|
          t.integer :user_id
           t.string :name, null:false
           t.integer :age, null:false
           t.integer :gender, null:false
           t.string :image, null:false
         end
       end
     end
