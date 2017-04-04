class CreateProvinces < ActiveRecord::Migration[5.0]
  def change
    create_table :provinces do |t|
      t.string :Name
      t.float :GST
      t.float :PST
      t.float :HST

      t.timestamps
    end
  end
end
