class CreateProvinces < ActiveRecord::Migration[5.0]
  def change
    create_table :provinces do |t|
      t.string :Name
      t.float :Tax

      t.timestamps
    end
  end
end
