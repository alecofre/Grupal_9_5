class CreateDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :details do |t|
      t.string :description
      t.references :pedido, null: false, foreign_key: true
      t.references :articulo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
