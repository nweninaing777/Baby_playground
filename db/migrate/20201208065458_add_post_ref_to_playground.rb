class AddPostRefToPlayground < ActiveRecord::Migration[5.2]
  def change
      add_reference :playgrounds, :post, foreign_key: true
  end
end
