class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :order_item_id
      t.integer :customer_id
      t.integer :send_cost
      t.integer :order_status
      t.string :post_code
      t.text :address
      t.string :name
      t.integer :perfect_price
      t.integer :payment

      t.timestamps
    end
  end
end
