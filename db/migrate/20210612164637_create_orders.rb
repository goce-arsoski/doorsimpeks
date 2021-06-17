class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :order_no
      t.string :client
      t.string :address
      t.string :phone
      t.string :project
      t.string :email

      t.timestamps
    end
  end
end
