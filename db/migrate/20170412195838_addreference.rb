class Addreference < ActiveRecord::Migration[5.0]
  def change
add_reference :orders, :shopping_carts, foreign_key: true
    remove_column :orders, :shopping_carts_id, :integer
  end
end
