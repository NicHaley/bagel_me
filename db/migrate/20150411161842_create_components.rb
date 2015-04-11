class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.integer :item_id
      t.string :name
      t.decimal :cost

      t.timestamps null: false
    end
  end
end
