class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :text
      t.references :contact, index: true

      t.timestamps null: false
    end
    add_foreign_key :notes, :contacts
  end
end
