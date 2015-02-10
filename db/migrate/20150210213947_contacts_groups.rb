class ContactsGroups < ActiveRecord::Migration
  def change
    create_join_table :contacts, :groups
  end
end
