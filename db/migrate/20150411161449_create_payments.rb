class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :order_id
      t.decimal :sub_total
      t.decimal :total
      t.string :stripe_id

      t.timestamps null: false
    end
  end
end
