class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.string :name
      t.text :description
      t.float :amount
      t.integer :user_id
      t.integer :group_id

      t.timestamps
    end
  end
end
