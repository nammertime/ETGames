class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.integer :CustomerID
      t.string :FirstName
      t.string :LastName
      t.string :UserName
      t.string :Password
      t.string :Address
      t.string :City
      t.string :PostalCode
      t.string :Phone
      t.string :Email
      t.string :Province

      t.timestamps
    end
  end
end
