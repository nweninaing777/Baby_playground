class AddUserRefToPlaygrounds < ActiveRecord::Migration[5.2]
  def change
     add_reference :playgrounds, :user, foreign_key: true
  end
end
