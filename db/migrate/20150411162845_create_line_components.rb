class CreateLineComponents < ActiveRecord::Migration
  def change
    create_table :line_components do |t|
      t.integer :line_item_id
      t.integer :component_id

      t.timestamps null: false
    end
  end
end
