class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.string :relation
      t.integer :primary_id
      t.integer :secondary_id

      t.timestamps null: false
    end
  end
end
