class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.string :name
      t.text :description
      t.float :amount
      t.references :user, null: false, foreign_key: true
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
