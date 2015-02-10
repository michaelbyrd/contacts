class CreateNumbers < ActiveRecord::Migration
  def change
    create_table :numbers do |t|
      t.integer :number
      t.references :contact, index: true
      t.references :category, index: true

      t.timestamps null: false
    end
    add_foreign_key :numbers, :contacts
    add_foreign_key :numbers, :categories
  end
end
