class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :city
      t.integer :zip
      t.references :contact, index: true
      t.references :category, index: true
      t.references :state, index: true

      t.timestamps null: false
    end
    add_foreign_key :addresses, :contacts
    add_foreign_key :addresses, :categories
    add_foreign_key :addresses, :states
  end
end
