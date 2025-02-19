class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.float :purchase_price
      t.float :sell_price
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
