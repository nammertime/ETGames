class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :cartID
      t.integer :CustomerID
      t.float :TaxRate
      t.float :Total
      t.float :subTotal

      t.timestamps
    end
  end
end
