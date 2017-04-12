class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :cartID
      t.belongs_to :shopping_carts, index: true
      t.integer :CustomerID
      t.float :TaxRate
      t.float :Total
      t.float :subTotal

      t.timestamps
    end
  end
end
