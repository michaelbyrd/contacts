class CreateStreetAddresses < ActiveRecord::Migration
  def change
    create_table :street_addresses do |t|
      t.integer :line_number
      t.string :line
      t.references :address, index: true

      t.timestamps null: false
    end
    add_foreign_key :street_addresses, :addresses
  end
end
