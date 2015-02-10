class CreateEmailAddresses < ActiveRecord::Migration
  def change
    create_table :email_addresses do |t|
      t.string :email
      t.references :contact, index: true
      t.references :category, index: true

      t.timestamps null: false
    end
    add_foreign_key :email_addresses, :contacts
    add_foreign_key :email_addresses, :categories
  end
end
