class Addreference < ActiveRecord::Migration[5.0]
  def change
        remove_column :orders, :shopping_carts_id, :integer
add_reference :orders, :shopping_cart, foreign_key: true
  end
end
