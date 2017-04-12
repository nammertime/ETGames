class FixColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :orders, :cartID, :shopping_Cart_id
  end
end
