class Addrelations < ActiveRecord::Migration[5.0]
  def change
add_column :orders, :shopping_carts_id, :integer
  end
end
