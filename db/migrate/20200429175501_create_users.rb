class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :icon

      t.timestamps
    end
    add_index :users, :name, unique: true
  end
end
