class Removecolumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :ShoppingCart_id, :integer
  end
end
