class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name,                null: false
      t.string :yomi,                null: false
      t.integer :status, default: 0, null: false

      t.timestamps
    end
    add_index :users, :name, unique: true
    add_index :users, :yomi, unique: true
  end
end
